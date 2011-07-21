class Post < ActiveRecord::Base
  belongs_to :boards
  belongs_to :users
  
end
