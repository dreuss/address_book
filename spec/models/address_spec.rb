require 'spec_helper'

describe Address do
  describe 'validations' do
    before do
      @add = Address.new
      @add.valid?
    end

    it 'must validate Street' do
      @add.street
      @add.errors[:street].should_not be_empty
    end

    it 'must validate city' do
      @add.city
      @add.errors[:city].should_not be_empty
    end

    it 'must validate State' do
      @add.state
      @add.errors[:state].should_not be_empty
    end

    it 'must validate zip' do
      @add.zip
      @add.errors[:zip].should_not be_empty
    end

    it 'has a Zip that is a numeral' do
      addy = FactoryGirl.create(:address)
      addy.zip = "abcde"
      addy.should be_invalid
      addy.zip = "12345"
      addy.should be_valid
    end


  it 'State must be two letters & uppercase'

  it 'State must be a valid US state'

  it 'address must belong to a user'

  it 'given a user can create an address'

  it 'a user can have many addresses'

  it 'user does not have to have any address'
  end
end
