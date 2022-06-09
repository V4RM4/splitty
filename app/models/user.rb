class User < ApplicationRecord
    has_secure_password
    has_many :groups

    def welcome
        "Hello, #{self.username}!"
    end
end
