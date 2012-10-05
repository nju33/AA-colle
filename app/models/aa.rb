class Aa < ActiveRecord::Base
  has_many :tags, dependent: :destroy
  belongs_to :user
  attr_accessible :body, :name, :user_id

  # 登録フォームに
  attr_accessible :tags_attributes
  accepts_nested_attributes_for :tags

  validates :name, :body, presence: true
end
