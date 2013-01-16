class Aa < ActiveRecord::Base
  has_many :tags, dependent: :destroy
  belongs_to :user
  attr_accessible :body, :name, :user_id

  # 登録フォームに
  attr_accessible :tags_attributes
  accepts_nested_attributes_for :tags

  validates :body, presence: true
  #validates :tag, presence: true

  #def tags_attributes=(tag_string)
  #  tags = new Array
    #tags = tag_string[:tags_attributes]
    #tag_string[0][:tag].split(/\s/).each { |tag_name| self.tags_attributes = tag_name }
    #tag_names.to_a.each do |tag_name|
  #    tags = tag_name
  #  end
  #  self.tags = tags
  #end
end
