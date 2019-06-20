# Copyright (c) 2015 Jean Dias

ActiveAdmin.register Site do

  menu parent: "Opções"

  index do
    column :nome
    column :meta_titulo
    column :meta_descricao
    column :autor
    actions
  end

  filter :nome
  filter :meta_titulo
  filter :autor

  form do |f|
    f.inputs "Detalhes sobre o site" do
      f.input :nome
      f.input :meta_titulo, max_length: 70
      f.input :meta_descricao, max_length: 156
      f.input :meta_keywords
      f.input :autor
    end
    f.inputs "Banners do Site" do
      f.input :banner
      f.input :url_banner
      f.input :banner_mobile
      f.input :url_banner_mobile
      f.input :title_banner
      f.input :alt_banner
      f.input :banner_h1_h2
      f.input :banner_mobile_h1_h2
    end
    f.actions
  end

  permit_params :nome, :meta_descricao, :meta_titulo, :autor, :banner, :banner_mobile, :url_banner, :url_banner_mobile, :meta_keywords, :banner_h1_h2, :banner_mobile_h1_h2, :title_banner, :alt_banner
  
end
