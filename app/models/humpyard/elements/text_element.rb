module Humpyard
  module Elements 
    ####
    # Humpyard::Elements::TextElement is a model of a text element.    
    class TextElement < ::ActiveRecord::Base
      acts_as_humpyard_element :system_element => true
      
      attr_accessible :content, :html_content
      
      require 'globalize'
      
      translates :content
      validates_presence_of :content
      
      def html_content(options = {})
        if content.blank?
          html = ''
        else
          if Object.const_defined?('RedCloth')
            html = RedCloth.new(content).to_html
          else
            html = content.gsub("\n", "<br />")
          end
        end
        
        unless html.blank?
          html = Humpyard.uri_parser.substitute html if options[:parse_uris]
          
          html.gsub(/(href="[a-z]*:\/\/)/,'target="blank" \1').html_safe
        else
          ''
        end
      end

      def html_content= content
        if content.blank?
          self.content = ''
        else
          if Object.const_defined?('RedCloth')
            require 'html_to_textile'           
            self.content = HtmlToTextile.new(content.gsub("\n", ' ')).to_textile
          else
            self.content = content.gsub(/<br[^>]*>/, "\n").gsub(/<[^>]*>/, '')
          end
        end
      end
    end
  end
end