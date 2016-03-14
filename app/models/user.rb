class User < ActiveRecord::Base
  validates_presence_of :email, uniqueness: true
  validates :email, presence: true, format: { with: /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/ }
end
