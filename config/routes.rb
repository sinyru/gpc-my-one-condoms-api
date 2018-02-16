# frozen_string_literal: true
Rails.application.routes.draw do
  resources :examples, except: [:new, :edit]
  resources :orders, except: [:new, :edit]
  resources :input_dates, except: [:new, :edit]
  resources :customer_orders, except: [:new, :edit]
  resources :reports, except: [:new, :edit]
  resources :net_promoter_scores, except: [:new, :edit]
  resources :page_one_orders, except: [:new, :edit]
  resources :page_two_orders, except: [:new, :edit]
  resources :page_three_orders, except: [:new, :edit]
  resources :page_four_orders, except: [:new, :edit]
  resources :page_five_orders, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
