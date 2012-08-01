CrudRails::Application.routes.draw do
  resource :categoria
  resource :evento
  root :to => 'categoria#index'
end
