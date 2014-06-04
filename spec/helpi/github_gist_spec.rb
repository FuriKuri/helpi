require 'helpi/github_gist'

describe GithubGist do
  it "upload a file" do
    gist = GithubGist.new
    gist.run.should == "Gist"
  end

  it "has a help text" do
    gist = GithubGist.new
    gist.help.should == "Help"
  end
end