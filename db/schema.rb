ActiveRecord::Schema.define(version: 2020_10_10_170140) do
  enable_extension "plpgsql"
  create_table "micotters", force: :cascade do |t|
    t.text "content"
  end
end
