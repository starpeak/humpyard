require 'generators/humpyard'
require 'rails/generators/named_base'
require 'rails/generators/migration'
require 'rails/generators/active_model'
require 'active_record'

module Humpyard
  module Generators
    ####
    # == Element Generator
    #
    #   rails humpyard:element ElementName [field:type field:type] [options]
    #
    # === Description
    # The humpyard element generator creates a custom element that can 
    # be used inside your humpyard pages.
    #
    # === Options
    # <tt>[--skip-model]</tt>:: Don't generate a model or migration file.
    # <tt>[--skip-migration]</tt>:: Dont generate migration file for model.
    # <tt>[--skip-timestamps]</tt>:: Don't add timestamps to migration file.
    # <tt>[--skip-views]</tt>:: Don't generate view files.
    #
    # === Runtime options
    # <tt>-q, [--quiet]</tt>:: Supress status output
    # <tt>-p, [--pretend]</tt>:: Run but do not make any changes
    # <tt>-s, [--skip]</tt>:: Skip files that already exist
    # <tt>-f, [--force]</tt>:: Overwrite files that already exist
    #
    # === Test framework options
    # <tt>[--testunit]</tt>:: Use test/unit for test files.
    # <tt>[--shoulda]</tt>:: Use shoulda for test files.
    # <tt>[--rspec]</tt>:: Use RSpec for test files.
    # <tt>[--skip-tests]</tt>:: Don't generate test files.
    #
    # === Examples
    #   rails generate humpyard:element SimpleText text:string 
    #   rails generate humpyard:element another_thing content:text --skip-tests
    # 
    # 
    class ElementGenerator < Base 
      include Rails::Generators::Migration   

      argument :element_name, :type => :string, :required => true, :banner => 'ElementName'

      include Humpyard::Generators::ModelTemplate

      def create_element # :nodoc:        
        unless options.skip_views?
          template '_inline_edit.html.haml', "app/views/humpyard/elements/#{plural_name}/_inline_edit.html.haml"
          template '_edit.html.haml', "app/views/humpyard/elements/#{plural_name}/_edit.html.haml"
          template '_show.html.haml', "app/views/humpyard/elements/#{plural_name}/_show.html.haml"
        end

        unless options.skip_model?
          create_model options
        end
      end   
      
      private
        def model_name
          "#{element_name.camelize}Element"
        end
    end
  end
end
