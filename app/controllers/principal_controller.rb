# Copyright (c) 2015 Jean Dias

class PrincipalController < ApplicationController

	def index
		@posts = Post.where(situacao: 1, indice: 1).order(created_at: :desc).page(params[:page])
		@ativo = 'home'
	end

end