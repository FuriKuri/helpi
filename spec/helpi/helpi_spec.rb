require 'helpi'
require_relative '../spec_helper'

describe Helpi do
  it 'should return the version' do
    Helpi::VERSION == "0.0.1"
  end
end
