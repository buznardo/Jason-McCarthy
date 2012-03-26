require "spec_helper"

describe Shoot do
  it "should be creatable" do
    Factory :shoot
  end

  it { should validate_presence_of(:title) }

  it { should belong_to(:tag) }
end
