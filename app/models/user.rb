class User < ActiveRecord::Base
  attr_accessible :bio, :email, :first_name, :last_name

  searchable :auto_index => false do
    text :first_name
    text :last_name
    text :bio
  end
end
