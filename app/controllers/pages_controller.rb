class PagesController < ApplicationController
  def home
    @title = "Home"
    @car = Car.new
  end

  def contact
    @title = "Contact"
  end

  def about
    @title = "About"
  end
  
  def result
    @title = "Result"
    
    # Read form details
    tank_size       = params[:car][:tank_size].to_f
    existing_octane = params[:car][:existing_octane].to_f
    existing_amount = params[:car][:existing_amount].to_f
    base_octane     = params[:car][:base_octane].to_f
    base_amount     = params[:car][:base_amount].to_f
    boost_octane    = params[:car][:boost_octane].to_f
    boost_amount    = params[:car][:boost_amount].to_f
    target_octane   = params[:car][:target_octane].to_f

    total_energy    = target_octane * tank_size
    existing_energy = existing_octane * existing_amount
    required_energy = total_energy - existing_energy
    fill_amount     = tank_size - existing_amount
        
    # Calculate result
    @amount_to_fill = (required_energy - (base_octane * fill_amount)) / (boost_octane - base_octane)
  end
end
