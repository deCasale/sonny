# Load configuration file
SONNY_CONFIG = YAML.load_file("#{Rails.root}/config/sonny.yml")[Rails.env]
throw 'Configure Sonny in config/sonny.yml (see config/sonny.yml.example)' if SONNY_CONFIG.blank?

# Set tv api
TVAPI = case SONNY_CONFIG['tvapi']
when 'thetvdb'
  require 'sonny/tv_api/thetvdb'
  Thetvdb.new
else
  throw 'Unsupported tvapi in config/sonny.yml (see config/sonny.yml.example)'
end