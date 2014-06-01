require 'helpi/translate'

describe Translate do
  it "translate words" do
    translator = Translate.new
    translator.run.should == "Translator"
  end
end