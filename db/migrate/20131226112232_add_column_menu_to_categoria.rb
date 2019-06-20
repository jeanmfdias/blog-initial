# Copyright (c) 2015 Jean Dias

class AddColumnMenuToCategoria < ActiveRecord::Migration
  def change
    add_column :categoria, :menu, :integer
  end
end
