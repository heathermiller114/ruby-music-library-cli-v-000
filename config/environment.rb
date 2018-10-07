require 'bundler'
Bundler.require

module Concerns
  module Findable
    
    def find_by_name(song_name)
      self.all.find {|song| song.name == song_name}
    end
    
    def find_or_create_by_name(song_name)
      if find_by_name(song_name) == nil
        create(song_name)
      else
        find_by_name(song_name)
      end
    end
    
  end
end

require_all 'lib'
