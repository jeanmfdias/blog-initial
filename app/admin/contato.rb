# Copyright (c) 2015 Jean Dias

ActiveAdmin.register Contato do

  permit_params :nome, :email, :assunto, :mensagem, :situacao
  
end
