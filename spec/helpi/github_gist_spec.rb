require 'helpi/git_hub_gist'
require_relative '../spec_helper'

describe GitHubGist do
  it "upload a file" do
    gist = GitHubGist.new
    gist.run.should == "Gist"
  end

  it "has a help text" do
    gist = GitHubGist.new
    gist.help.should == "Help"
  end
end