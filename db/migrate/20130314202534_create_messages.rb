class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :mobile, null:false, limit: 15
      t.timestamps
    end
  end
end
