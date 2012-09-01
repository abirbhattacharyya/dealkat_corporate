ActionController::Routing::Routes.draw do |map|
  map.root :controller => "home"

	map.sign_up "/sign_up", :controller => "home", :action => "sign_up"

	map.products "/products", :controller => "home", :action => "products"
	map.case_study "/case_study", :controller => "home", :action => "case_study"
	map.technology "/technology", :controller => "home", :action => "technology"
	map.tour "/tour", :controller => "home", :action => "tour"
	
	map.slide "/slide", :controller => "home", :action => "slide"

	map.company "/company", :controller => "home", :action => "company"
	map.team "/team", :controller => "home", :action => "team"
	map.customers "/customers", :controller => "home", :action => "customers"
	
	map.analytics "/analytics", :controller => "home", :action => "analytics"
	map.benefits "/benefits", :controller => "home", :action => "benefits"
	map.why "/why", :controller => "home", :action => "why"
	
	map.contact "/contact", :controller => "home", :action => "contact"
	map.about "/about", :controller => "home", :action => "about"
	
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
