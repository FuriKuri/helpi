require 'rest_client'
require 'json'

class GitHubGist
  def initialize(access_token)
    @access_token = access_token
  end

  def create
    result = RestClient::Resource.new 'https://api.github.com/gists'
    response = result.post create_gist(nil), :Authorization => "token #{@access_token}"
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