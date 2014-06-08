require_relative '../../spec_helper'
require 'helpi/github/git_hub_gist'
require 'rest_client'

describe GitHubGist do
  it "create a new gist" do
    gist = GitHubGist.new("token")
    allow_any_instance_of(RestClient::Resource).to receive(:post) {'{"html_url":"url"}'}
    expect(gist.create("filename")).to eq("url")
  end
end