require 'rails_helper'
require 'pry'

RSpec.describe Item, type: :model do
  before(:context) do
    @item = Item.new(name: "Computer")
    @item.save
  end

  context "before it is removed" do
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

  context "after it is removed" do
    it "should have a 'deleted_at' attribute type that can be converted into DateTime" do
      @item.soft_delete
      @item.save
      expect(@item.deleted_at.to_datetime.class).to eq(DateTime)
    end
    it "should have a 'deleted_at' attribute type of 'ActiveSupport::TimeWithZone'" do
      @item.soft_delete
      @item.save
      expect(@item.deleted_at.class).to eq(ActiveSupport::TimeWithZone)
    end
  end

end


