require 'spec_helper'

describe Rating do
  it { should have_and_belong_to_many :cards }
end
