# Copyright (c) 2015 Jean Dias

ActiveAdmin.register AdminUser do

  menu label: "Usuários", parent: "Opções"

  permit_params :email, :password, :password_confirmation

  index title: "Usuários" do
    column :email
    column :current_sign_in_at
    column :last_sign_in_at
    column :sign_in_count
    actions
  end

  filter :email

  form do |f|
    f.inputs "Detalhes do Usuário" do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
