class Tag
  include Mongoid::Document
  field :text, type: String
  has_and_belongs_to_many :archivable_posts
  has_and_belongs_to_many :related, class_name: 'Tag', inverse_of: :related
end
