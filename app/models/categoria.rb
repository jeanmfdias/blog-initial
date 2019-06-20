# Copyright (c) 2015 Jean Dias

class Categoria < ActiveRecord::Base
  belongs_to :categoria

  mount_uploader :logotipo, PictureUploader

  validates :url, :nome, presence: true
  validates :url, :nome, uniqueness: true
  validates :meta_descricao, length: { maximum: 156 }
  validates :meta_titulo, length: { maximum: 70 }
end
