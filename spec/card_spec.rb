require 'spec_helper'

describe Card do
  it { validate_presence_of :name }
  it { should belong_to :category }
  it { should have_and_belong_to_many :ratings }
end
