module ActionDispatch::Routing
  class Mapper
    protected

    def devise_safeguard(mapping, controllers)
      match "/#{mapping.path_names[:verify_safeguard]}", :controller => controllers[:devise_safeguard], :action => :GET_verify_safeguard, :as => :verify_safeguard, :via => :get
      match "/#{mapping.path_names[:verify_safeguard]}", :controller => controllers[:devise_safeguard], :action => :POST_verify_safeguard, :as => nil, :via => :post

     # match "/#{mapping.path_names[:enable_safeguard]}", :controller => controllers[:devise_safeguard], :action => :GET_enable_safeguard, :as => :enable_safeguard, :via => :get
     # match "/#{mapping.path_names[:enable_safeguard]}", :controller => controllers[:devise_safeguard], :action => :POST_enable_safeguard, :as => nil, :via => :post

    #  match "/#{mapping.path_names[:verify_safeguard_installation]}", :controller => controllers[:devise_safeguard], :action => :GET_verify_safeguard_installation, :as => :verify_safeguard_installation, :via => :get
    #  match "/#{mapping.path_names[:verify_safeguard_installation]}", :controller => controllers[:devise_safeguard], :action => :POST_verify_safeguard_installation, :as => nil, :via => :post
    end
  end
end

