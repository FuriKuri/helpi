require_relative '../../spec_helper'
require 'helpi/gist/git_hub_authorization'

describe GitHubAuthorization, "#access_token" do
  it "returns the existing access token for helpi" do
    auth = GitHubAuthorization.new 'user', 'password'
    expect(auth.access_token).to eq('token')
  end
end