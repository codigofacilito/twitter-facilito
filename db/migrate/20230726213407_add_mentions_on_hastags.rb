class AddMentionsOnHastags < ActiveRecord::Migration[7.0]
  def change
    add_column :hashtags, :mentions, :integer, default:0
  end
end
