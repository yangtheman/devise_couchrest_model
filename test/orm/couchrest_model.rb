TEST_SERVER = CouchRest.new("http://127.0.0.1:5984")
TEST_SERVER.default_database = 'devise-test-suite'

class ActiveSupport::TestCase
  setup do
    TEST_SERVER.default_database.recreate!
  end
end
