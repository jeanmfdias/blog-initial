# Copyright (c) 2015 Jean Dias

class ContatosController < ApplicationController

	def index
		@contato = Contato.new
		@ativo = 'contato'
		@icon = 'glyphicon-envelope'
	end

	def create
		@contato = Contato.create permit_params
		redirect_to action: :index, controller: :contatos, :notice => "contato-enviado"
	end

	private
		def permit_params
			params.require(:contato).permit!
		end

end
