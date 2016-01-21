Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :backlists do
    resources :backlists, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :backlists, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :backlists, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end


  # Frontend routes
  namespace :backlists do
    resources :genres, :only => [:index, :show]
  end

  # Admin routes
  namespace :backlists, :path => '' do
    namespace :admin, :path => "#{Refinery::Core.backend_route}/backlists" do
      resources :genres, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
