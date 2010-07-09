ActionController::Routing::Routes.draw do |map|
  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action
  
  map.with_options :controller => 'page', :action => 'view' do |page|
    page.hostingpayment 'hosting/payment.html', :id => 'hostingpayment'
    page.hostingservices 'hosting/services.html', :id => 'hostingservices'
    page.hostingsignup 'hosting/signup.html', :id => 'hostingsignup'
    page.hostingsupport 'hosting/support.html', :id => 'hostingsupport'
    page.hostingtestimonials 'hosting/testimonials.html', :id => 'hostingtestimonials'
    page.hostingplatform 'hosting/platform.html', :id => 'hostingplatform'
    page.consultingbackground 'consulting/background.html', :id => 'consultingbackground'
    page.consultingpricing 'consulting/pricing.html', :id => 'consultingpricing'
    page.consultingservices 'consulting/services.html', :id => 'consultingservices'
    page.consultingtestimonials 'consulting/testimonials.html', :id => 'consultingtestimonials'
  end
  
  map.connect 'testimonial/:id', :controller => 'testimonial', :action => 'view'
  map.static 'status', :controller => 'status', :action => 'view'

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  # map.root :controller => "welcome"
 
  map.root :controller => "page"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing or commenting them out if you're using named routes and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
