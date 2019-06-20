# Copyright (c) 2015 Jean Dias

class BuscasController < ApplicationController
	
	def index
		if @results.blank?
			@recomendamos = Post.where(situacao: 1, indice: 1).sample(6)
			render "principal/page404", status: 404, :formats => [:html]
		end
	end

	def create
		@busca = Busca.new(params_busca)
		@query = @busca.termo
  	@results = GoogleCustomSearch.search(@query, 0)
    if @results.blank?
      redirect_to root_path, notice: "Nenhum resultado encontrado. Tente novamente!"
    else
    	render "index"
    end
	end

	private
		def params_busca
			params.require(:busca).permit(:termo)
		end

end
