class EventosController < ApplicationController

	def index

	@evento = Evento.new

	@evento.titulo = 'TESTE'
    @evento.save
    puts "INICIO Eventos..."
    Evento.find(:all)
    puts "FIM Eventos..."
	end
end
