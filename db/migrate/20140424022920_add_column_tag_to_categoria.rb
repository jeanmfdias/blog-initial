# Copyright (c) 2015 Jean Dias

class AddColumnTagToCategoria < ActiveRecord::Migration
  def change
    add_column :categoria, :tag, :integer
  end
end
