# Copyright (c) 2015 Jean Dias

class AddColumnMetaKeywordsToPost < ActiveRecord::Migration
  def change
    add_column :posts, :meta_keywords, :string
  end
end
