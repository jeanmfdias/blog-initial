# Copyright (c) 2015 Jean Dias

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :gerar_menu, :gerar_populares, :getSite, :getBanners, :variaveis

  helper_method :is_mobile?
  helper_method :variaveis

  def variaveis
    @url_base = "http://localhost:3000/"
    @url_base2 = "http://localhost:3000" # usada nas views e sitemap
    @perguntas = "perguntas"
    @frases = "frases"
    @frases_2 = "frases-2"
    @musicas = "musicas"
    @mensagens = "posts-main"
    @mensagens_2 = "posts-second"
    @mensagens_3 = "posts-third"
    # quanto mais categorias pesonalizadas mais var vc cria...
  end

  def gerar_menu
  	@menu = Categoria.where(menu: 1, situacao: 1).order(:ordem)
    @newsletter = Newsletter.new
    @topicos = Categoria.where(tag: 1, situacao: 1)
    @busca = Busca.new
  end

  def gerar_populares
  	@posts_populares = Post.where(situacao: 1, indice: 1).sample(3) # permite que funcione randomicamente
    @otherposts = Post.where(situacao: 1, indice: 1).sample(5) # permite que funcione randomicamente
  end

  def getSite
    site = Site.all
    site.each do |s|
      @titulo_site = s.meta_titulo
      @descricao_site = s.meta_descricao
      @nome_site = s.nome
      @banner_main = s.banner
      @banner_mobile = s.banner_mobile
      @url_banner = s.url_banner
      @url_banner_mobile = s.url_banner_mobile
      @h1 = s.h1
      @h2 = s.h2
      @meta_keywords = s.meta_keywords
      @autor = s.autor
    end
  end

  def getBanners
    @banners = Publicidade.where(situacao: 1)
  end

  def is_mobile?
    browser = Browser.new(:ua => request.env["HTTP_USER_AGENT"], :accept_language => "en-us")
    browser.mobile?
  end

end
