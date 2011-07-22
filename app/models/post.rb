class Post < ActiveRecord::Base
  belongs_to :board, :counter_cache => true
  belongs_to :user
  
  #default_scope :order =>'created_at DESC'
  scope :recent, :order =>'updated_at DESC'
  
  # Paperclip
   has_attached_file :excerpt_image,:styles => { :thumb => "100x100>", :medium => "300x300>" }
end
