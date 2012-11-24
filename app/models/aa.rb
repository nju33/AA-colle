class Aa < ActiveRecord::Base
  has_many :tags, dependent: :destroy
  belongs_to :user
  attr_accessible :body, :name, :user_id

  # 登録フォームに
  attr_accessible :tags_attributes
  accepts_nested_attributes_for :tags

  validates :name, :body, presence: true
  #validates :tag, presence: true

  #def tags_attributes=(tag)
  #  tags = new Array
  #  tag_names = tag.to_a.split(/\s/)
  #  tag_names.to_a.each do |tag_name|
  #    tags = tag_name
  #  end
  #  self.tags = tags
  #end
end
