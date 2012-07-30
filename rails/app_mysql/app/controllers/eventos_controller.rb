class EventosController < ApplicationController

	def index
		@categorias = Categoria.find(:all)
	end

	def show
    	@categoria = Categoria.find(params[:id])
  	end

  	def new
    	@categoria = Categoria.new
	end
end
