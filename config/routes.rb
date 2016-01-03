Rails.application.routes.draw do
  get 'live/clappr', to: 'live#clappr_index'
  get 'live', to: 'live#videojs_index'

  root to: 'application#index'
  namespace :api do
    namespace :v1 do
      post 'clients', to: 'srs#clients'
      post 'streams', to: 'srs#streams'
      post 'sessions', to: 'srs#sessions'
      post 'dvrs', to: 'srs#dvrs'
      post 'hls', to: 'srs#hls'
      get 'hls/:app/:stream_and_ts', to: 'srs#hls'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end