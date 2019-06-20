# Copyright (c) 2015 Jean Dias

class AddColumnTipoMidiaToPost < ActiveRecord::Migration
  def change
    add_column :posts, :tipo_midia, :integer
  end
end
