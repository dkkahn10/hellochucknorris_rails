class AddGreetingTable < ActiveRecord::Migration[5.0]
  def change
    create_table :greetings do |t|
      t.string :greeting, null: false

      t.timestamps
    end
  end
end
