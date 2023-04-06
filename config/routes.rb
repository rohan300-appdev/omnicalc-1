Rails.application.routes.draw do

  get("/square/new", {:controller => "application", :action => "blank_square_form"})
  get("/square/results", {:controller => "application", :action => "calculate_square"})

  get("random/new", {:controller => "application", :action => "rand_blank"})
  get("random/results", {:controller => "application", :action => "rand_results"})

  get("/square_root/new", {:controller => "application", :action => "sq_root_blank"})
  get("/square_root/results", {:controller => "application", :action => "sq_root_results"})

end
