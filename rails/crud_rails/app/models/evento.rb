class Evento < ActiveRecord::Base
  # attr_accessible :title, :body

  attr_accessible :titulo, :descricao, :data, :categoria_id

  belongs_to :categoria
end
