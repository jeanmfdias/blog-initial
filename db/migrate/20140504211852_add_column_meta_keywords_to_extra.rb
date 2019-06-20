# Copyright (c) 2015 Jean Dias

class AddColumnMetaKeywordsToExtra < ActiveRecord::Migration
  def change
    add_column :extras, :meta_keywords, :string
  end
end
