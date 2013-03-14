class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.references :message, null: false, limit: 15
      t.integer :scale, :null=>false
      t.timestamps
    end
    execute "ALTER TABLE responses ADD CONSTRAINT scale_check CHECK (scale >= 0 AND scale <=10)"
    add_foreign_key :responses, :messages, dependent: :delete
  end
end
