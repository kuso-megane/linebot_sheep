Rails.application.routes.draw do
  get 'linebot/main'
    root 'welcome#index'
    get 'welcome/index' => 'welcome#index'
    post 'api/linebot' => 'linebot/main'
end
