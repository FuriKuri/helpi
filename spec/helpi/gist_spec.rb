require 'helpi/gist'
require 'helpi/github/git_hub_gist'
require 'helpi/github/git_hub_authorization'
require_relative '../spec_helper'

describe Gist do

  it "can upload a file to github gist" do
    allow_any_instance_of(GitHubAuthorization).to receive(:access_token) {'access_token'}
    allow_any_instance_of(GitHubGist).to receive(:create)
    gist = Gist.new
    expect(gist.run('user', 'pw', 'file')).to eq("Gist")
  end

  it "has a help text" do
    gist = Gist.new
    expect(gist.help).to eq("Help")
  end
end