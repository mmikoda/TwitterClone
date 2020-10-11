class CreateMicotters < ActiveRecord::Migration[5.2]
  def change
    create_table :micotters do |t|
      t.text :content
    end
  end
end
