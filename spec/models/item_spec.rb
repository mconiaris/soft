require 'rails_helper'
require 'pry'

RSpec.describe Item, type: :model do
  before(:context) do
    @item_name = "Computer"
    @item = Item.new(name: @item_name)
    @item.save
  end

  context "in its default state" do
    it "should be an Item" do
      expect(@item).to be_an_instance_of(Item)
    end
    it "should have the name attribute assigned to it" do
      expect(@item.name).to eq(@item_name)
    end
    it "should have a 'deleted_at' value of nil" do
      expect(@item.deleted_at).to eq(nil)
    end
  end

  context "the 'soft_delete' method" do
    it "should change the 'deleted_at' attribute to a date and time object that can be converted into DateTime" do
      @item.soft_delete
      @item.save
      expect(@item.deleted_at.to_datetime.class).to eq(DateTime)
    end
    it "should have a 'deleted_at' attribute type that was converted into a 'ActiveSupport::TimeWithZone' object in the database" do
      @item.soft_delete
      @item.save
      expect(@item.deleted_at.class).to eq(ActiveSupport::TimeWithZone)
    end
  end

  context "the 'restore' method" do
    it "should change the 'deleted_at' attribute to nil" do
      @item.restore
      @item.save
      expect(@item.deleted_at).to eq(nil)
    end
  end

end


