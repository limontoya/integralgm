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

ActiveRecord::Schema.define(version: 20170222000528) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aboutus", force: :cascade do |t|
    t.string   "nombre"
    t.text     "mision"
    t.text     "vision"
    t.text     "descripcion"
    t.string   "contactenos"
    t.string   "copyright"
    t.string   "urlnosotros"
    t.string   "urlmision"
    t.string   "urlvision"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "contactos", force: :cascade do |t|
    t.string   "titulo"
    t.text     "peticion"
    t.string   "nombre"
    t.string   "correo"
    t.string   "ciudad"
    t.string   "telefono"
    t.string   "codigozip"
    t.string   "cotizacionpdf"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "producto_adjuntos", force: :cascade do |t|
    t.integer  "producto_id"
    t.string   "avatar"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "productos", force: :cascade do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.text     "caracteristicas"
    t.text     "especificaciones"
    t.string   "avatar"
    t.boolean  "es_servicio"
    t.boolean  "es_propio"
    t.string   "nombre_empresa"
    t.string   "sitio_empresa"
    t.string   "url_prod_empresa"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "superadmin_role",        default: false
    t.string   "supervisor_role",        default: "f"
    t.boolean  "user_role",              default: true
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
