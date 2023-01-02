class CreateTweets < ActiveRecord::Migration[7.0]
  def change
    create_table :tweets do |t|
      t.string :body
      t.references :user, null: false, foreign_key: true
      t.integer :report_counter, default: 0

      t.timestamps
    end
  end
end
