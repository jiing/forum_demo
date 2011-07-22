class AddPostsCountToBoard < ActiveRecord::Migration
  def self.up
    add_column :boards, :posts_count, :integer, :default => 0

  def self.down
    remove_column :boards, :post_count
  end
end
