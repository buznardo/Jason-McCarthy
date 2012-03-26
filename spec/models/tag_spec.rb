require "spec_helper"

describe Tag do
  it "should be creatable" do
    Factory :tag
  end

  it { should have_many(:shoots) }
end
