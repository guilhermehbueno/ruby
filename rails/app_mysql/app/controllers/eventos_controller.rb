class EventosController < ApplicationController

	def index
		@categorias = Categoria.find(:all)
	end
end
