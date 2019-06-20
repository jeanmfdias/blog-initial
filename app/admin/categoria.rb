# Copyright (c) 2015 Jean Dias

ActiveAdmin.register Categoria do

  index do 
    column :nome
    column :url
    column "Categoria Pai" do |c|
      c.categoria_id != nil ? c.categoria.nome : "0"
    end
    column "Situação" do |c|
      c.situacao == 1 ? "Ativo" : "Inativo"
    end
    actions
  end

  filter :categoria_id, as: :select, collection: Categoria.order(:nome), member_label: :nome, member_value: :id
  filter :nome
  filter :url
  filter :situacao, as: :select, collection: [["Ativa",1],["Inativa",0]], label: "Situação"  

  form do |f|
    f.inputs "Nova Categoria" do
      f.input :categoria_id, as: :select, collection: Categoria.order(:nome), member_label: :nome, member_value: :id
      f.input :nome
      f.input :logotipo, as: :file
      f.input :title_img
      f.input :alt_img
    end
    f.inputs "SEO" do
      f.input :url
      f.input :meta_titulo, max_length: 70
      f.input :meta_descricao, max_length: 156
      f.input :title_link
      f.input :evento, label: "Evento de Analytics"
    end
    f.inputs "Detalhes da Categoria" do
      f.input :descricao, as: :html_editor
      f.input :menu, as: :select, collection: [["Aparece", 1], ["Não Aparece", 0]]
      f.input :ordem, as: :select, collection: [[1], [2], [3], [4], [5], [9]]
      f.input :tag, as: :select, collection: [["Sim",1],["Nao",0]]
      f.input :situacao, as: :select, collection: [["Ativa",1],["Inativa",0]]
    end
    f.actions
  end

  permit_params :evento, :nome, :descricao, :logotipo, :url, :meta_descricao, :meta_titulo, :categoria_id, :menu, :situacao, :ordem, :tag, :title_link, :title_img, :alt_img
  
end
