class CategoriaController < ApplicationController

	def index
		@categorias = Categoria.find(:all)
	end

	def show
    	@categoria = Categoria.find(params[:id])
  	end

  	def new
    	@categoria = Categoria.new
	end

	def create
    @categoria = Categoria.new(params[:categoria])
    if @categoria.save
      flash[:aviso] = 'Categoria cadastrada com sucesso.'
      redirect_to :action => "show", :id => @categoria.id
    end
  end

  def edit
    @categoria = Categoria.find(params[:id])
  end

  def update
    puts 'ID editado: #{params[:id]}' + params[:id]
    @categoria = Categoria.find(params[:id])
    if @categoria.update_attributes(params[:categoria])
       flash[:aviso] = 'Categoria atualizada.'
       redirect_to :action => "show", :id => @categoria.id
    end
  end

  def destroy
    @categoria = Categoria.find(params[:id])
    @categoria.destroy
    flash[:aviso] = 'Evento excluido com sucesso'
    redirect_to :action => "index"
  end

end
