require 'helpi/github/git_hub_gist'
require 'helpi/github/git_hub_authorization'

module Helpi
  class Gist
    def run(username, password, filename)
      authorization = GitHubAuthorization.new username, password
      access_token = authorization.access_token
      gist = GitHubGist.new access_token
      gist.create filename
      "Gist"
    end

    def help
      "Help"
    end
  end
end