class Season < ActiveRecord::Base

  has_many :episodes
  belongs_to :show

end