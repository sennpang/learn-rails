class Comment
  include Mongoid::Document
  include Mongoid::Timestamps
  field :commenter, type: String
  field :body, type: String
  belongs_to :article
  VALID_STATUSES = %w[public private archived]

  validates :status, inclusion: { in: VALID_STATUSES }

  def archived?
    status == 'archived'
  end
end
