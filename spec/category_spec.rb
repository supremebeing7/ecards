require 'spec_helper'

describe Category do
  it { validate_presence_of :name }
  it { should have_many :cards }
end
