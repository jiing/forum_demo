class Post < ActiveRecord::Base
  belongs_to :boards, :counter_cache => true
  belongs_to :users
  
  #default_scope :order =>'created_at DESC'
  scope :recent, :order =>'updated_at DESC'
end
