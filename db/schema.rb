ActiveRecord::Schema[7.1].define(version: 2024_02_19_085323) do
  create_table "interns", force: :cascade do |t|
    t.string "index"
    t.integer "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
