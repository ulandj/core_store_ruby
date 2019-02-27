class CreateChannels < ActiveRecord::Migration[5.2]
  def change
    create_table :channels do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.boolean :active, default: false
      t.string :token, null: false

      t.timestamps
    end
  end
end
