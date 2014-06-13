require_relative '../../spec_helper'
require 'helpi/github/gist'
require 'rest_client'

describe Helpi::GitHub::Gist do
  it "create a new gist" do
    gist = Helpi::GitHub::Gist.new("token")
    allow_any_instance_of(RestClient::Resource).to receive(:post) {'{"html_url":"url"}'}
    expect(gist.create("filename")).to eq("url")
  end
end