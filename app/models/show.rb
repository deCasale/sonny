class Show < ActiveRecord::Base
  attr_accessible :description, :name, :api_id, :imdb_id

  has_many :seasons
  has_many :episodes, :through => :seasons

  validates_uniqueness_of :name, :api_id, :imdb_id

  def self.search_and_create(show_name)
  	show_data = TVAPI.search_for_show(show_name)
  	return nil if show_data.blank?
    Show.create(show_data)
  end
end
