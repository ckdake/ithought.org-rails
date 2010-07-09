class PageController < ApplicationController
  layout 'main'
  
  def view
    render :template => "page/#{params[:id]}"
  end
  
end
