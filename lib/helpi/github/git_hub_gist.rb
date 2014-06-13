require 'rest_client'
require 'json'
module Helpi
  module GitHub
    class GitHubGist
      def initialize(access_token)
        @access_token = access_token
      end

      def create(filename)
        result = RestClient::Resource.new 'https://api.github.com/gists'
        response = result.post create_gist(filename), :Authorization => "token #{@access_token}"
        JSON.parse(response)["html_url"]
      end

      private
      def create_gist(filename)
        '{
            "description": "the description for this gist",
            "public": true,
            "files": {
              "file1.txt": { "content": "String file contents!!!!!!" }
            }
         }'
      end
    end
  end
end
