# Copyright (c) 2015 Jean Dias

class Post < ActiveRecord::Base
  belongs_to :categoria

  mount_uploader :midia, PictureUploader
  mount_uploader :miniatura, PictureUploader

  validates :titulo, :conteudo, :url, presence: true
  validates :titulo, :conteudo, :url, uniqueness: true

  validates :meta_descricao, length: { maximum: 156 }
  validates :meta_titulo, length: { maximum: 70 }

  paginates_per 7
end
