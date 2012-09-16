namespace :sonny do
  desc <<-END_DESC
  Adds some favourite shows to start with

  Example:
    rake sonny:add_favourite_shows
  END_DESC

  task :add_favourite_shows => :environment do
    [
      'Big Bang Theory',
      'Family Guy',
      'Futurama',
      'The Simpsons',
      'Two And A Half Men',
      'How I Met Your Mother',
      'Breaking Bad'
    ].each{|show_name| Show.search_and_create(show_name)}
  end

end