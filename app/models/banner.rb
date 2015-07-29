# Copyright (c) 2015 Jean Dias

class Banner < ActiveRecord::Base

	mount_uploader :imagem, PictureUploader

end
