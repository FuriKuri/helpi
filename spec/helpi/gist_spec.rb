require 'helpi/gist'
require_relative '../spec_helper'

describe Gist do

  it "has a help text" do
    gist = Gist.new
    expect(gist.help).to eq("Help")
  end
end