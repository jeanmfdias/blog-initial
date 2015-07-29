# Copyright (c) 2015 Jean Dias

Bloginitial::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :comentarios
  resources :newsletters
  resources :contatos
  resources :buscas
  
  root :to => "principal#index"

  match "sitemap.xml" => "extra#sitemap", via: [:get]

  match "perguntas" => "posts#showPerguntas", via: [:get]

  match "perguntas/:respostas" => "posts#showRespostasPerguntas", via: [:get]
  
  match "perguntas/:respostas/:resposta" => "posts#showResposta", via: [:get]

  match "frases" => "posts#showFrases", via: [:get]

  match "musicas" => "extra#showMusicas", via: [:get]

  match "frases/:autor" => "posts#showAutorFrases", via: [:get]

  match "musicas/:autor" => "extra#showAutorMusicas", via: [:get]

  match "musicas/:autor/:musica" => "extra#showPopup", via: [:get]

  match "contato" => "contatos#index", via: [:get]

  match "tag/:tag" => "posts#showByTag", via: [:get]

  match ":categoria" => "posts#showByCategoria", via: [:get]

  match ":categoria/:post" => "posts#show", via: [:get]

  post "busca" => "buscas#create"

  # Redirecionamento 301 e 404

  match ":um" => "posts#e404", via: [:get]
  match ":um/:dois" => "posts#e404", via: [:get]
  match ":um/:dois/:tres" => "posts#e404", via: [:get]
  match ":um/:dois/:tres/:quatro" => "posts#e404", via: [:get]
  match ":um/:dois/:tres/:quatro/:cinco" => "posts#e404", via: [:get]

end
