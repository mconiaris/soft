require 'rails_helper'
require 'pry'

RSpec.describe Item, type: :model do
  # before(:context) do
  #   @item_name = "Computer"
  #   @item = Item.new(name: @item_name)
  #   @item.save
  # end
  let(:item1) { Item.new(name: "Computer") }

  context "in its default state" do
    it "should be an Item" do
      expect(item1).to be_an_instance_of(Item)
    end
    it "should validate with name present" do
      expect(item1).to be_valid
    end
    it "the 'name' attribute should be a string" do
      expect(item1.name).to be_instance_of(String)
    end
    it "the 'deleted_at' attribute should be nil" do
      expect(item1.deleted_at).to be_nil
    end
  end

  context "the 'soft_delete' method" do
    it "should change the 'deleted_at' attribute from nil to a 
      a DateTime object" do
      item1.save
      item1.soft_delete
      expect(item1.deleted_at).to be_within(1).of(DateTime.now)
    end
    it "should change the 'deleted_at' attribute from nil to a 
      'ActiveSupport::TimeWithZone' object in the database" do
      item1.save
      item1.soft_delete
      expect(item1.deleted_at.class).to eq(ActiveSupport::TimeWithZone)
    end
  end

  context "the 'restore' method" do
    it "should change the 'deleted_at' attribute to nil" do
      item1.save
      item1.restore
      expect(item1.deleted_at).to eq(nil)
    end
  end

  context "default scope" do
    it "should only include items with 'deleted_at' values of nil" do
      item1.save
      item2 = Item.new(name: "Kindle", deleted_at: DateTime.now)
      @items = Item.all
      binding.pry
    end
  end

end


