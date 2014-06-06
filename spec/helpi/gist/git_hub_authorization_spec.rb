require_relative '../../spec_helper'
require 'helpi/gist/git_hub_authorization'
require 'rest_client'

describe GitHubAuthorization do

  it "returns the access token if exists" do
    auth = GitHubAuthorization.new 'user', 'password'
    allow_any_instance_of(RestClient::Resource).to receive(:get) {'[{"token":"token", "app":{"name" : "helpi (API)"}}]'}
    expect(auth.access_token).to eq('token')
  end

  it "returns the new access token if app not exists" do
    auth = GitHubAuthorization.new 'user', 'password'
    allow_any_instance_of(RestClient::Resource).to receive(:get) {'[{"token":"token", "app":{"name" : "Any App"}}]'}
    allow_any_instance_of(RestClient::Resource).to receive(:post) {'{"token":"new_token", "app":{"name" : "helpi (API)"}}'}
    expect(auth.access_token).to eq('new_token')
  end
end