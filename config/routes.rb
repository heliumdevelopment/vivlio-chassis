Rails.application.routes.draw do
  controller :users do
    get 'users/new' => :new
  end


end
