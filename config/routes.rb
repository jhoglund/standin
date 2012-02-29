Rails.application.routes.draw do
  root :to => 'standin/pages#show'
  match "/*id" => 'standin/pages#show', :as => :page, :format => false
end
