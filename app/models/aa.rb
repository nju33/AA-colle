class Aa < ActiveRecord::Base
  has_many :tags, dependent: :destroy
  attr_accessible :body, :name

  validates :name, :body, presence: true
end
