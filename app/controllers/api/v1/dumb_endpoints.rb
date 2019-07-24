module API
  module V1

    class Foo
      def self.bar(bool1, bool2 = false)
        nil
      end
    end

    class DumbEndpoints < Grape::API
      version 'v1' # path-based versioning by default
      format :json # We don't like xml anymore

      get 'dumb' do
        Foo.bar(true, false)
        { message: "Hello world !"}
      end

    end
  end
end