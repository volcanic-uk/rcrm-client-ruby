RSpec.describe RCRM do
  it "has a version number" do
    expect(RCRM::VERSION).not_to be nil
  end
end

RSpec.describe RCRM::Connection do
  let(:connection) do
    RCRM::Connection.new(
      url: "https://api.example.com",
      integrator_key: "test-integrator",
      api_key: "test-api-key"
    )
  end

  describe "#initialize" do
    it "accepts url, integrator_key and api_key" do
      expect(connection.url).to eq("https://api.example.com")
      expect(connection.integrator_key).to eq("test-integrator")
      expect(connection.api_key).to eq("test-api-key")
    end

    it "raises on unexpected arguments" do
      expect {
        RCRM::Connection.new(bogus: "value")
      }.to raise_error(ArgumentError, /Unexpected arguments/)
    end
  end

  describe "#connection" do
    it "returns a Faraday connection configured with JSON middleware" do
      faraday = connection.connection
      expect(faraday).to be_a(Faraday::Connection)
    end

    it "parses JSON responses into OpenStruct objects" do
      stubs = Faraday::Adapter::Test::Stubs.new do |stub|
        stub.post("/") do
          [200, { "Content-Type" => "application/json" }, '{"name":"Alice","age":30}']
        end
      end

      conn = RCRM::Connection.new(
        url: "https://api.example.com",
        integrator_key: "test-integrator",
        api_key: "test-api-key"
      )

      # Build a Faraday connection with the test adapter
      test_conn = Faraday.new(url: "https://api.example.com") do |f|
        f.request :json
        f.response :json, content_type: /\bjson$/, parser_options: { object_class: OpenStruct }
        f.adapter :test, stubs
      end

      response = test_conn.post("/", { query: "test" }.to_json)

      expect(response.body).to be_a(OpenStruct)
      expect(response.body.name).to eq("Alice")
      expect(response.body.age).to eq(30)

      stubs.verify_stubbed_calls
    end
  end
end
