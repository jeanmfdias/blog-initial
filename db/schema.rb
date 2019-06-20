# encoding: UTF-8
#
# Copyright (c) 2015 Jean Dias
#
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141016165427) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "banners", force: true do |t|
    t.string   "imagem"
    t.string   "url_destino"
    t.string   "titulo"
    t.integer  "prioridade"
    t.integer  "situacao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "buscas", force: true do |t|
    t.string   "termo"
    t.string   "navegador"
    t.string   "so"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categoria", force: true do |t|
    t.string   "nome"
    t.text     "descricao"
    t.string   "url"
    t.string   "meta_descricao"
    t.string   "meta_titulo"
    t.integer  "categoria_id"
    t.integer  "situacao"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "menu"
    t.integer  "ordem"
    t.string   "logotipo"
    t.integer  "tag"
    t.string   "title_link"
    t.string   "alt_img"
    t.string   "title_img"
    t.string   "meta_keywords"
    t.string   "evento"
  end

  add_index "categoria", ["categoria_id"], name: "index_categoria_on_categoria_id", using: :btree

  create_table "comentarios", force: true do |t|
    t.string   "nome"
    t.string   "email"
    t.text     "mensagem"
    t.integer  "post_id"
    t.integer  "situacao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comentarios", ["post_id"], name: "index_comentarios_on_post_id", using: :btree

  create_table "contatos", force: true do |t|
    t.string   "nome"
    t.string   "email"
    t.string   "assunto"
    t.text     "mensagem"
    t.integer  "situacao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "extras", force: true do |t|
    t.text     "conteudo"
    t.integer  "situacao"
    t.integer  "categoria_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "url"
    t.string   "meta_keywords"
  end

  add_index "extras", ["categoria_id"], name: "index_extras_on_categoria_id", using: :btree

  create_table "newsletters", force: true do |t|
    t.string   "nome"
    t.string   "email"
    t.integer  "situacao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.string   "titulo"
    t.text     "conteudo"
    t.string   "url"
    t.string   "meta_descricao"
    t.string   "meta_titulo"
    t.string   "midia"
    t.integer  "categoria_id"
    t.integer  "situacao"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tipo_midia"
    t.integer  "indice"
    t.string   "miniatura"
    t.integer  "tag"
    t.string   "title_img"
    t.string   "alt_img"
    t.string   "title_link"
    t.string   "meta_keywords"
    t.integer  "assinatura"
    t.string   "video"
    t.integer  "video_align"
  end

  add_index "posts", ["categoria_id"], name: "index_posts_on_categoria_id", using: :btree

  create_table "publicidades", force: true do |t|
    t.string   "imagem"
    t.string   "url_destino"
    t.string   "titulo"
    t.integer  "prioridade"
    t.integer  "situacao"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "abrir_em"
    t.string   "title_img"
    t.string   "alt_img"
    t.string   "evento"
  end

  create_table "sites", force: true do |t|
    t.string   "nome"
    t.string   "meta_descricao"
    t.string   "meta_titulo"
    t.string   "autor"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "banner"
    t.string   "banner_mobile"
    t.string   "url_banner"
    t.string   "url_banner_mobile"
    t.string   "h1"
    t.string   "h2"
    t.string   "meta_keywords"
    t.string   "banner_h1_h2"
    t.string   "banner_mobile_h1_h2"
    t.string   "title_banner"
    t.string   "alt_banner"
  end

  create_table "tags", force: true do |t|
    t.string   "nome"
    t.text     "descricao"
    t.integer  "situacao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
