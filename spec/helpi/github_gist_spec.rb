require 'helpi/git_hub_gist'
require_relative '../spec_helper'

describe GitHubGist do
  it "upload a file" do
    gist = GitHubGist.new
    expect(gist.run).to eq("Gist")
  end

  it "has a help text" do
    gist = GitHubGist.new
    expect(gist.help).to eq("Help")
  end
end