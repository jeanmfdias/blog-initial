# Copyright (c) 2015 Jean Dias

ActiveAdmin.register Publicidade do

  menu label: "Publicidades", parent: "Opções"

  permit_params :imagem, :url_destino, :titulo, :prioridade, :abrir_em, :situacao, :title_img, :alt_img, :evento

  index do
    column :titulo
    column :url_destino
    column :prioridade
    column "Situação" do |s|
      s.situacao == 0 ? "Inativo" : "Ativo"
    end
    actions
  end

  filter :titulo
  filter :url_destino
  filter :abrir_em
  filter :prioridade, as: :select, collection: [1, 2, 3, 9]
  filter :situacao, as: :select, collection: [["Ativa",1],["Inativa",0]], label: "Situação"  

  form do |f|
    f.inputs do
      f.input :titulo
      f.input :url_destino
      f.input :imagem, as: :file, label: "Banner"
      f.input :title_img
      f.input :alt_img
      f.input :prioridade, as: :select, collection: [1, 2, 3, 9]
      f.input :abrir_em, as: :select, collection: [["Em nova Janela", "_blank"], ["Na mesma página", "_self"]]
      f.input :situacao, as: :select, collection: [["Ativo", 1], ["Inativo", 0]]
      f.input :evento, label: "Evento de Analytics"
    end
    f.actions
  end
  
end
