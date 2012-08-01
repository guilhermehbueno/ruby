class EventosController < ApplicationController

	def index
		@eventos = Evento.find(:all)
	end

	def show
    	@evento = Evento.find(params[:id])
  	end

  	def new
    	@evento = Evento.new
	end

	def create
    @evento = Evento.new(params[:evento])
    if @evento.save
      flash[:aviso] = 'Evento cadastrada com sucesso.'
      redirect_to :action => "show", :id => @evento.id
    end
  end

  def edit
    @evento = Evento.find(params[:id])
  end

  def update
    puts 'ID editado: #{params[:id]}' + params[:id]
    @evento = Evento.find(params[:id])
    if @evento.update_attributes(params[:evento])
       flash[:aviso] = 'Evento atualizada.'
       redirect_to :action => "show", :id => @evento.id
    end
  end

  def destroy
    @evento = Evento.find(params[:id])
    @evento.destroy
    flash[:aviso] = 'Evento excluido com sucesso'
    redirect_to :action => "index"
  end
end
