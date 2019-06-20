# Copyright (c) 2015 Jean Dias

class AddColumnUrlToExtra < ActiveRecord::Migration
  def change
    add_column :extras, :url, :string
  end
end
