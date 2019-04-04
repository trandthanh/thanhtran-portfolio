class Message
  include ActiveModel::Model
  attr_accessor :name, :email, :subject, :body, :consent
  validates :name, :email, :subject, :body, presence: true
  validates :consent, acceptance: true
end
