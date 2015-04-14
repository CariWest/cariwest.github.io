require 'rails_helper'

describe Article do
  it { should validate_presence_of :title }
  it { should validate_presence_of :excerpt }
  it { should validate_presence_of :content }

  it { should validate_uniqueness_of :title }
  it { should validate_uniqueness_of :excerpt }
  it { should validate_uniqueness_of :content }
end
