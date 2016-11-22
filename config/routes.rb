Rails.application.routes.draw do
  get 'game', to: 'game_runner#game'
  get 'score', to: 'game_runner#score'
  get 'game_inputs', to: 'game_runner#game_inputs'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
