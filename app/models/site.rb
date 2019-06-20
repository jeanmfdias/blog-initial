# Copyright (c) 2015 Jean Dias

class Site < ActiveRecord::Base
	validates :nome, :meta_titulo, :meta_descricao, presence: true
	validates :nome, :meta_titulo, :meta_descricao, uniqueness: true

	validates :meta_descricao, length: { maximum: 156 }
  validates :meta_titulo, length: { maximum: 70 }

  mount_uploader :banner, PictureUploader
  mount_uploader :banner_mobile, PictureUploader
  mount_uploader :banner_h1_h2, PictureUploader
  mount_uploader :banner_mobile_h1_h2, PictureUploader
end
