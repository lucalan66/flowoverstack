module Commentable
  extend ActiveSupport::Concern
  included do
    has_many :commentations, as: :commentable
    has_many :comments, through: :commentations
  end
end