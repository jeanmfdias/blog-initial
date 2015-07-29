# Copyright (c) 2015 Jean Dias

class AddColumnMetaKeywordsToCategoria < ActiveRecord::Migration
  def change
    add_column :categoria, :meta_keywords, :string
  end
end
