# Copyright (c) 2015 Jean Dias

class AddColumnLogotipoToCategoria < ActiveRecord::Migration
  def change
    add_column :categoria, :logotipo, :string
  end
end
