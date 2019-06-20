# Copyright (c) 2015 Jean Dias

ActiveAdmin.register Comentario do

  menu label: "Comentários"

  index title: "Comentários" do
    column :nome
    column :email
    column "Post" do |c|
      c.post_id != nil ? c.post.titulo : "0"
    end
    column "Criado em" do |c|
      c.created_at
    end
    column "Situação" do |c|
      c.situacao == 1 ? "Publicado" : "Não Publicado"
    end
    actions
  end

  filter :nome
  filter :email
  filter :post_id, as: :select, collection: Post.order(id: :desc), member_value: :id, member_label: :titulo
  filter :situacao, as: :select, collection: [["Publicado", 1], ["Não Publicado", 0]]
  filter :created_at, label: "Criado em"

  form do |f|
    f.inputs "Novo Comentário" do
      f.input :nome
      f.input :email
      f.input :mensagem, as: :html_editor
      f.input :post_id, as: :select, collection: Post.order(id: :desc), member_value: :id, member_label: :titulo
      f.input :situacao, as: :select, collection: [["Publicado", 1], ["Não Publicado", 0]]
    end
    f.actions
  end
  
  permit_params :nome, :email, :mensagem, :post_id, :situacao

end
