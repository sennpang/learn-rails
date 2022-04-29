class Comment
  include Visible
  include Mongoid::Document
  include Mongoid::Timestamps
  field :commenter, type: String
  field :body, type: String
  belongs_to :article
end
