require 'helpi/github_gist'

describe GithubGist do
  it "upload a file" do
    gist = GithubGist.new
    gist.run.should == "Gist"
  end
end