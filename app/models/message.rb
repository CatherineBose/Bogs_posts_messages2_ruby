class Message < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  # added the comments relationship
  has_many :comments, as: :commentable

  validates :author, :message, presence: true
end
