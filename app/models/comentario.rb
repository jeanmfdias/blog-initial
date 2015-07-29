# Copyright (c) 2015 Jean Dias

class Comentario < ActiveRecord::Base
  belongs_to :post

  validates :nome, :email, presence: true
end
