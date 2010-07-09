class PageController < ApplicationController
  layout 'main'
  
  def view
    page = params[:id]
    render :template => "page/#{params[:id]}"
  end
  
end
