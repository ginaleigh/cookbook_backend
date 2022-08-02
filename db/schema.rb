ActiveRecord::Schema[7.0].define(version: 2022_08_02_112528) do
  enable_extension "plpgsql"

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.text "information"
    t.text "ingredients"
    t.text "instructions"
    t.string "notes"
    t.integer "preptime"
    t.integer "cooktime"
    t.string "category"
    t.string "method"
    t.string "cuisine"
    t.string "nutrition"
    t.string "facts"
    t.string "keywords"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
