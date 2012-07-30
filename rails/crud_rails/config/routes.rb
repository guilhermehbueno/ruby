CrudRails::Application.routes.draw do
  resource :categoria
  root :to => 'categoria#index'
end
