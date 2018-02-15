class AddContentToTweet < ActiveRecord::Migration[5.1]
  def change
    add_column :tweets, :content, :text
  end
end
