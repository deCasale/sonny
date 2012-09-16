require 'sonny/tv_api/tv_api'
require 'nokogiri'
require 'open-uri'
require 'uri'

class Thetvdb < TvApi
  def initialize
    @api_key = SONNY_CONFIG['tvapi_key']
    throw 'Undefined api key for thetvdb' if @api_key.blank?
  end

  def search_for_show(name)
    set_mirror_if_required
    uri = "#{@mirror}/api/GetSeries.php?seriesname=#{URI.escape(name)}"
    show_xml = Nokogiri::XML(open(uri)).xpath('//Data/Series[1]')

    return nil if show_xml.blank?

    show = {}
    show[:api_id]      = show_xml.xpath('seriesid').text
    show[:imdb_id]     = show_xml.xpath('IMDB_ID').text
    show[:name]        = show_xml.xpath('SeriesName').text
    show[:description] = show_xml.xpath('Overview').text

    return show
  end

  private

  def set_mirror_if_required
    @mirror ||= mirror
  end

  def mirror
    xml = Nokogiri::XML(open("http://www.thetvdb.com/api/#{@api_key}/mirrors.xml"))
    xml.xpath('//Mirrors/Mirror[1]/mirrorpath').text
  end
end
