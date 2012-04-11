require 'spec_helper'

describe User do
  it "can't create a user without a first name" do
    u = User.new
    u.should be_invalid
    u.first_name
    u.errors[:first_name].should_not be_empty
  end

  it "can't create a user without a last name" do
    u = User.new
    u.should be_invalid
    u.first_name
    u.errors[:last_name].should_not be_empty
  end
end
