# Copyright (c) 2015 Jean Dias

class AddColumnEventoToCategoria < ActiveRecord::Migration
  def change
    add_column :categoria, :evento, :string
  end
end
