class Episode < ActiveRecord:Migration

  belongs_to :season
  belongs_to :show, :through => :season

end