# Copyright (c) 2015 Jean Dias

class AddColumnMiniaturaToPost < ActiveRecord::Migration
  def change
    add_column :posts, :miniatura, :string
  end
end
