# Copyright (c) 2015 Jean Dias

ActiveAdmin.register Post do

  menu priority: 0

  index do
    column :titulo
    column "Categoria" do |c|
      c.categoria_id != nil ? c.categoria.nome : "0"
    end
    column :url
    column "Criado em" do |c|
      c.created_at
    end
    column "Situação" do |s|
      s.situacao == 1 ? "Publicado" : "Não Publicado"
    end
    actions
  end

  filter :titulo
  filter :categoria_id, as: :select, collection: Categoria.order(:nome), member_label: :nome, member_value: :id
  filter :url
  filter :situacao, as: :select, collection: [["Publicado", 1], ["Não Publicado", 0]]
  filter :created_at, label: "Criado em"

  form do |f|
    f.inputs "Novo Post" do
      f.input :titulo
      f.input :conteudo, as: :html_editor
      f.input :assinatura, as: :select, collection: [["Sim", 1], ["Não", 0]]
    end
    f.inputs "Media" do
      f.input :midia, as: :file
      f.input :title_img
      f.input :alt_img
      f.input :miniatura, as: :file
      f.input :tipo_midia, as: :select, collection: [["Imagem",3]], selected: 3
    end
    f.inputs do
      f.input :categoria_id, as: :select, collection: Categoria.order(:nome), member_label: :nome, member_value: :id
      f.input :situacao, as: :select, collection: [["Publicado", 1], ["Não Publicado", 0]]
      f.input :indice, as: :select, collection: [["Aparece", 1], ["Não Aparece", 0]]
      f.input :tag, as: :select, collection: Categoria.where(tag: 1).order(:nome), member_label: :nome, member_value: :id
    end
    f.inputs "SEO" do
      f.input :url
      f.input :meta_titulo, max_length: 70
      f.input :meta_descricao, max_length: 156
      f.input :title_link
    end
    f.inputs "Video" do
      f.input :video, label: "Codigo do video do YouTube"
      f.input :video_align, as: :select, collection: [["No Topo", 1], ["Em Baixo", -1]], label: "Local do Video"
    end
    f.actions
  end

  permit_params :titulo, :conteudo, :categoria_id, :url, :meta_descricao, :meta_titulo, :midia, :miniatura, :tipo_midia, :situacao, :indice, :tag, :title_img, :alt_img, :title_link, :assinatura, :video, :video_align
  
end
