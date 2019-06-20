# Copyright (c) 2015 Jean Dias

class PostsController < ApplicationController

	def showByCategoria
		@categoria = Categoria.where(url: params[:categoria], situacao: 1, tag: 0)
		@categoria.each do |c|
			if c.categoria_id == nil
				@posts = Post.where(categoria_id: c.id, situacao: 1).order(created_at: :desc).page params[:page]
				@extras = Extra.where(categoria_id: c.id, situacao: 1).order(created_at: :desc).page params[:page]
				@ativo = c.url
			else
				@categoria = nil
			end
		end

		if !@categoria.blank?
			if !@posts.blank?
				# verificação para o icone
				if params[:categoria] == @mensagens
					@icon = 'glyphicon-comment'
				elsif params[:categoria] == @mensagens_2 || params[:categoria] == @mensagens_3
					@icon = 'glyphicon-book'
				end

				render 'posts/showByCategoria'
			elsif !@extras.blank?
				# verificação para o icone
				if params[:categoria] == @frases_2
					@icon = 'glyphicon-thumbs-up'
				end

				render 'posts/showExtra'
			end
		else
			e404
		end
	end

	def showByTag
		@categoria = Categoria.where(url: params[:tag], situacao: 1, tag: 1)
		@categoria.each do |c|
			@posts = Post.where(tag: c.id, situacao: 1).order(created_at: :desc).page params[:page]
			@ativo = c.url
		end

		if !@categoria.blank?
			if !@posts.blank?
				@icon = "glyphicon glyphicon-ok-sign"
				render 'posts/showByCategoria'
			else
				recomendamos
				render 'principal/404'
			end
		else
			e404
		end
	end

	def show
		@post = Post.where(:url => params[:post], situacao: 1).last

		unless @post.blank?
			@recomendamos = Post.where(situacao: 1, categoria_id: @post.categoria_id, tag: @post.tag).sample(3) # permite que funcione randomicamente
			@ativo = @post.categoria.url
		else
			e404
		end
	end

	def showFrases
		@categoria = Categoria.where(url: @frases, situacao: 1)
		@categoria.each do |c|
			@subCategorias = Categoria.where(categoria_id: c.id, situacao: 1).order(nome: :asc)
			@frasesRandom = Post.joins("inner join categoria sc on (posts.categoria_id = sc.id)").joins("
inner join categoria c on (sc.categoria_id = c.id)").where(situacao: 1).sample(10)
			@ativo = c.url

			@icon = 'glyphicon-user'
		end	
	end

	def showAutorFrases
		@categoria = Categoria.where(url: params[:autor], situacao: 1)
		@categoria.each do |c|
			@posts = Post.where(categoria_id: c.id, situacao: 1).order(created_at: :desc).page(params[:page]).per(40)
		end

		if !@posts.blank?
			@ativo = @frases
		else
			e404
		end
	end

	def showPerguntas
		@categoria = Categoria.where(url: @perguntas, situacao: 1).last
		@subCategorias = Categoria.where(categoria_id: @categoria.id, situacao: 1).order(nome: :asc)
		@ativo = @categoria.url

		@icon = 'glyphicon-question-sign'
	end

	def showRespostasPerguntas
		@categoria = Categoria.where(url: params[:respostas], situacao: 1).last

		# Verifica se há categoria
		unless @categoria.blank?
			@posts = Post.where(categoria_id: @categoria.id, situacao: 1).order(created_at: :desc).page(params[:page]).per(40)

			@icon = 'glyphicon-question-sign'
			unless @posts.blank?
				@ativo = @perguntas
			else
				e404
			end
		else
			e404
		end
	end


	def showResposta
		@categoria = Categoria.where(url: params[:respostas], situacao: 1).last

		# Verifica se há categoria
		unless @categoria.blank?
			@post = Post.where(categoria_id: @categoria.id, situacao: 1, url: params[:resposta]).last

			@icon = 'glyphicon-question-sign'
			# verififa se há posts
			unless @post.blank?
				@ativo = @perguntas
			else
				e404
			end
		else
			e404
		end
	end

	def e404
		recomendamos
		render 'principal/page404', status: 404, :formats => [:html]
	end

	private
		def recomendamos
			@recomendamos = Post.where(situacao: 1, indice: 1).sample(6)
		end

end
