require 'helpi/gist'
require 'helpi/github/gist'
require 'helpi/github/authorization'
require_relative '../spec_helper'

describe Helpi::Gist do

  it "can upload a file to github gist" do
    allow_any_instance_of(Helpi::GitHub::Authorization).to receive(:access_token) {'access_token'}
    allow_any_instance_of(Helpi::GitHub::Gist).to receive(:create)
    gist = Helpi::Gist.new
    expect(gist.run('user', 'pw', 'file')).to eq("Gist")
  end

  it "has a help text" do
    gist = Helpi::Gist.new
    expect(gist.help).to eq("Help")
  end
end