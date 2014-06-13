require 'helpi/github/gist'
require 'helpi/github/authorization'

module Helpi
  class Gist
    def run(username, password, filename)
      authorization = Helpi::GitHub::Authorization.new username, password
      access_token = authorization.access_token
      gist = Helpi::GitHub::Gist.new access_token
      gist.create filename
      "Gist"
    end

    def help
      "Help"
    end
  end
end