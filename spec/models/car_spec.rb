require 'spec_helper'

describe Car do
  
  before(:each) do
    @user = Factory(:user)
    @attr = { :name => "BMW 535i", :tank_size => 18.5 }
  end
  
  it "should create a new instance with valid attributes" do
    @user.cars.create!(@attr)
  end
  
  it "should require a name" do
    car = @user.cars.new(@attr.merge(:name => ""))
    car.should_not be_valid
  end
  
  it "should have a tank size > 0" do
    car = @user.cars.new(@attr.merge(:tank_size => 0))
    car.should_not be_valid
  end
  
end
# == Schema Information
#
# Table name: cars
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  tank_size  :float
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

