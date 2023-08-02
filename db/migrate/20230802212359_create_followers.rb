class CreateFollowers < ActiveRecord::Migration[7.0]
  def change
    create_table :followers do |t|
      t.references :user, null: false, foreign_key: true
      t.references :follower, index: true, foreign_key: {user: :id}
      t.timestamps
    end
  end
end
