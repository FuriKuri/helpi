require 'helpme'

describe Helpme do
  it 'should return the version' do
    Helpme::VERSION == "0.0.1"
  end
end