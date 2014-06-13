require 'helpi'
require_relative '../spec_helper'

describe Helpi do
  it 'should return the version' do
    Helpi.version == "0.0.2"
  end
end
