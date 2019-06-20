# Copyright (c) 2015 Jean Dias

class AddColumnMetaKeywordsToSite < ActiveRecord::Migration
  def change
    add_column :sites, :meta_keywords, :string
  end
end
