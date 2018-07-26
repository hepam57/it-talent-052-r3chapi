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

ActiveRecord::Schema.define(version: 2018_07_26_160948) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "administradores", force: :cascade do |t|
    t.string "us_correo"
    t.string "us_contrasena"
    t.string "us_nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comentarios", force: :cascade do |t|
    t.string "co_comentario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "usuarios_id"
    t.bigint "informativos_id"
    t.index ["informativos_id"], name: "index_comentarios_on_informativos_id"
    t.index ["usuarios_id"], name: "index_comentarios_on_usuarios_id"
  end

  create_table "editores", force: :cascade do |t|
    t.string "us_correo"
    t.string "us_contrasena"
    t.string "us_nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "etiquetas", force: :cascade do |t|
    t.string "et_nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "administradores_id"
    t.index ["administradores_id"], name: "index_etiquetas_on_administradores_id"
  end

  create_table "informativos", force: :cascade do |t|
    t.string "in_titulo"
    t.string "in_img_hero"
    t.string "in_descripcion"
    t.integer "c_vistas"
    t.integer "in_compartido"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "administradores_id"
    t.index ["administradores_id"], name: "index_informativos_on_administradores_id"
  end

  create_table "informativos_etiquetas", force: :cascade do |t|
    t.bigint "informativos_id"
    t.bigint "etiquetas_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["etiquetas_id"], name: "index_informativos_etiquetas_on_etiquetas_id"
    t.index ["informativos_id"], name: "index_informativos_etiquetas_on_informativos_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "us_correo"
    t.string "us_contrasena"
    t.string "us_nombre"
    t.integer "us_sexo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios_etiquetas", force: :cascade do |t|
    t.bigint "usuarios_id"
    t.bigint "etiquetas_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["etiquetas_id"], name: "index_usuarios_etiquetas_on_etiquetas_id"
    t.index ["usuarios_id"], name: "index_usuarios_etiquetas_on_usuarios_id"
  end

end
