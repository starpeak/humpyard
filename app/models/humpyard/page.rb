module Humpyard
  ####
  # Humpyard::Page is the model for your pages. It holds the 
  # Humpyard::Elements containing the content of your page
  # and some meta data for the page itself.
  class Page < ::ActiveRecord::Base
    set_table_name "#{Humpyard::config.table_name_prefix}pages"
    require 'acts_as_tree'
    require 'globalize'
    
    translates :title, :description
    
    acts_as_tree :order => :position
    
    has_many :elements, :class_name => 'Humpyard::Element'
    
    # Return the human readable URL for the page.
    #
    # Posible options values are
    # <tt>:locale</tt>:: 
    #     A locale given in the Humpyard::Config.locales.
    #     If no <tt>:locale</tt> is given the option will be ::I18n.locale by default
    def human_url(options={})
      options[:locale] ||= ::I18n.locale
      
      unless Humpyard::config.locales.include? options[:locale].to_s
        options[:locale] = Humpyard::config.locales.first
      end
      
      if self.name == 'index'
        "/#{Humpyard::config.parsed_www_prefix(options).gsub(/[^\/]*$/, '')}"
      else
        "/#{Humpyard::config.parsed_www_prefix(options)}#{(self.ancestors.reverse + [self]).collect{|p| p.name} * '/'}.html"
      end
    end
    
    # Return the logical modification time for the page, suitable or http caching, generational cache keys, etc.
    def last_modified
      rails_root_mtime = Time.zone.at(::File.new("#{Rails.root}").mtime)
      timestamps = [rails_root_mtime, self.updated_at] + self.elements.collect{|element| element.last_modified}
      timestamps.sort.last
    end
  end
end