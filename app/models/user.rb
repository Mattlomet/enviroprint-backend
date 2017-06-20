class User < ApplicationRecord
    has_many :utilities

    validates_uniqueness_of :username
    validates_presence_of :username, :password
end
