require 'helpi/translate'

describe Translate do
  it "translate words" do
    translator = Translate.new
    translator.run.should == "Translator"
  end


  it "has a help text" do
    translator = Translate.new
    translator.help.should == "Help"
  end
end