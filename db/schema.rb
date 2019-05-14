
ActiveRecord::Schema.define(version: 2019_05_14_171629) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contacts", force: :cascade do |t|
    t.string "first_name"
    t.integer "age"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "last_name"
    t.boolean "friend"
  end

  create_table "notes", force: :cascade do |t|
    t.text "body"
    # given contact id to connect it to the parent
    t.bigint "contact_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contact_id"], name: "index_notes_on_contact_id"
  end

  add_foreign_key "notes", "contacts"
end
