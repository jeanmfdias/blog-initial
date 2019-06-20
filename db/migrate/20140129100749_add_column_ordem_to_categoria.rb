# Copyright (c) 2015 Jean Dias

class AddColumnOrdemToCategoria < ActiveRecord::Migration
  def change
    add_column :categoria, :ordem, :integer
  end
end
