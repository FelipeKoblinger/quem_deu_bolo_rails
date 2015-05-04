class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :event_date
      t.string :place
      t.text :description
      t.references :people, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
