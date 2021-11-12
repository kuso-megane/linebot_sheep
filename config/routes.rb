Rails.application.routes.draw do
    root 'welcome#index'
    get 'welcome/index' => 'welcome#index'
    post '/callback' => 'webhook#callback'
end
