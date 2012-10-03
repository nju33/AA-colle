class Tag < ActiveRecord::Base
  belongs_to :aa
  attr_accessible :aa_id, :tag
end
