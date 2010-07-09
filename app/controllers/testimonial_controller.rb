class TestimonialController < ApplicationController
  
  def view
    id = params[:curtest] || 1
    render :template => "testimonial/#{id}"
  end
  
end
