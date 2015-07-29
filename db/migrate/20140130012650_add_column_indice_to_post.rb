# Copyright (c) 2015 Jean Dias

class AddColumnIndiceToPost < ActiveRecord::Migration
  def change
    add_column :posts, :indice, :integer
  end
end
