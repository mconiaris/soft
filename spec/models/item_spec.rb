require 'rails_helper'
require 'pry'

RSpec.describe Item, type: :model do

  before(:context) do
    @item = Item.new(name: "Computer")
  end

  context "After Item instanciation" do
    it "should be an Item" do
      expect(@item).to be_an_instance_of(Item)
    end
    it "should be named 'Computer'" do
      expect(@item.name).to eq("Computer")
    end
    it "should have a 'deleted_at' value of nil" do
      expect(@item.deleted_at).to eq(nil)
    end
  end

  context "After Item is removed" do
    binding.pry
    @item.soft_delete
    it "shoulder have a 'deleted_at' attribute type of Timestamp" do
      expect(@item.deleted_at.class).to eq(Timestamp)     
    end
  end

end
