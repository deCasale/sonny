# Class used to get data for shows
class TvApi
  def initialize
  end

  def search_for_show(name)
    {
      :api_id => '123',
      :imdb_id => '1234',
      :name => 'Series Name', 
      :description => 'Series description'
    }
  end
end