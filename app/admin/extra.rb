# Copyright (c) 2015 Jean Dias

ActiveAdmin.register Extra do

  menu label: "Conteúdo Agregado", priority: 10

  index title: "Conteúdo Agregado" do
    column :id
    column "Situação" do |s| 
      s.situacao == 0 ? "Inativo" : "Ativo"
    end
    column "Categoria" do |c|
      c.categoria.nome
    end
    column :url
    actions
  end

  filter :situacao, as: :select, collection: [['Ativo', 1], ['Inativo', 0]], label: "Situação"
  filter :categoria, as: :select, collection: Categoria.all, member_value: :id, member_label: :nome
  filter :url

  form do |f|
    f.inputs do
      f.input :conteudo, as: :text
      f.input :situacao, as: :select, collection: [['Ativo', 1], ['Inativo', 0]]
      f.input :categoria, as: :select, collection: Categoria.all, member_value: :id, member_label: :nome
      f.input :url
    end
    f.actions
  end

  permit_params :conteudo, :situacao, :categoria_id, :url
  
end
