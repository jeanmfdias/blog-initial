# Copyright (c) 2015 Jean Dias

class AddColumnEventoToPublicidade < ActiveRecord::Migration
  def change
    add_column :publicidades, :evento, :string
  end
end
