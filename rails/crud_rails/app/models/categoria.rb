class Categoria < ActiveRecord::Base
  # attr_accessible :title, :body

  attr_accessible :titulo, :descricao

   has_many :eventos
end
