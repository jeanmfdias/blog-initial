# Copyright (c) 2015 Jean Dias

class ExtraController < ApplicationController

    layout nil

	def sitemap
		@urls = [
              ["1.0", @url_base2, "daily"],
              ["0.5", @url_base + "contato", "monthly"],
            ]

        @categorias = Categoria.where(situacao: 1, categoria_id: nil, tag: 0)
        @subcategorias = Categoria.where("situacao = 1 AND NOT categoria_id IS NULL AND tag = 0")
        @posts = Post.where(situacao: 1, indice: 1)
        @allPosts = Post.joins("inner join categoria c on (c.id = posts.categoria_id) inner join categoria sc on (sc.id = c.categoria_id)").where(situacao: 1)
        @output = Array.new

        @urls.each do |u|
        	@output << [u[1], u[2], u[0]]
        end

        @categorias.each do |c|
        	@output << [@url_base.to_s + c.url , 'weekly', '0.8']
        end

        @subcategorias.each do |sc|
            @output << [@url_base.to_s + sc.categoria.url + '/' + sc.url , 'weekly', '0.8']
        end

        @posts.each do |p|
        	@output << [@url_base.to_s + p.categoria.url + '/' + p.url , 'weekly', '0.65']
        end

        @allPosts.each do |ap|
            if ap.categoria.categoria_id != nil
                if ap.categoria.categoria.url == @perguntas
                    @output << [@url_base.to_s + ap.categoria.categoria.url + '/' + ap.categoria.url + '/' + ap.url , 'weekly', '0.65']   
                end
            end
        end

        headers['Content-Type'] = 'application/xml'

        render 'sitemap', :layout => false
	end

    def showMusicas
        @categoria = Categoria.where(url: @musicas, situacao: 1)
        @categoria.each do |c|
            @subCategorias = Categoria.where(categoria_id: c.id, situacao: 1).order(nome: :asc)
            @musicasRandom = Extra.joins("inner join categoria sc on (extras.categoria_id = sc.id)").joins("inner join categoria c on (sc.categoria_id = c.id)").where(situacao: 1).sample(5)
            @ativo = c.url

            @icon = 'glyphicon-music'
        end 
    end

    def showAutorMusicas
        @categoria = Categoria.where(url: params[:autor], situacao: 1)
        @categoria.each do |c|
            @ativo = c.categoria.url
            @extras = Extra.where(categoria_id: c.id, situacao: 1).order(created_at: :desc).page params[:page]
        end

        if !@extras.nil?
            render 'showAutorMusicas'
        else
            e404
        end
    end

    def showPopup
        @extra = Extra.where(url: params[:musica])
        render 'showPopup', layout: false
    end

    private
        def recomendamos
            @recomendamos = Post.where(situacao: 1, indice: 1).sample(6)
        end

        def e404
            recomendamos
            render 'principal/404', status: 404
        end

end
