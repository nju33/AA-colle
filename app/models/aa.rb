class Aa < ActiveRecord::Base
  has_many :tags, dependent: :destroy
  attr_accessible :body, :name

  # 登録フォームに
  attr_accessible :tags_attributes
  accepts_nested_attributes_for :tags

  validates :name, :body, presence: true
end
