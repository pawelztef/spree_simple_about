Spree::Core::Engine.add_routes do
  namespace :admin do 
    resources :mes, path: 'about' do
      collection do
        post 'mobility'
      end
    end
  end
end
