# Copyright (c) 2015 Jean Dias

class AddColumnAssinaturaToPost < ActiveRecord::Migration
  def change
    add_column :posts, :assinatura, :integer
  end
end
