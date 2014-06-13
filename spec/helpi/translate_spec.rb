require 'helpi/translate'
require_relative '../spec_helper'

describe Helpi::Translate do
  it "translate words" do
    translator = Helpi::Translate.new
    expect(translator.run).to eq("Translator")
  end


  it "has a help text" do
    translator = Helpi::Translate.new
    expect(translator.help).to eq("Help")
  end
end