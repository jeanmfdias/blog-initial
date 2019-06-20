# Copyright (c) 2015 Jean Dias

class Publicidade < ActiveRecord::Base

	mount_uploader :imagem, PictureUploader
		
end
