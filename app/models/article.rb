class Article
  include Mongoid::Document
  include Mongoid::Timestamps
  has_many :comments
  field :title, type: String
  field :text, type: String
  validates :title, presence: true, length: { minimum: 3 }
  validates :text, presence: true, length: { minimum: 10 }
end
