# Generated by rake
# DO NOT EDIT THIS FILE DIRECTLY
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{humpyard}
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Sven G. Broenstrup"]
  s.date = %q{2010-04-08}
  s.description = %q{Humpyard is a Rails CMS}
  s.email = %q{info@humpyard.org}
  s.files = ["lib/generators", "lib/generators/humpyard", "lib/generators/humpyard/element", "lib/generators/humpyard/element/element_generator.rb", "lib/generators/humpyard/element/templates", "lib/generators/humpyard/element/templates/_edit.html.haml", "lib/generators/humpyard/element/templates/_inline_edit.html.haml", "lib/generators/humpyard/element/templates/_show.html.haml", "lib/generators/humpyard/element/templates/fixtures.yml", "lib/generators/humpyard/element/templates/migration.rb", "lib/generators/humpyard/element/templates/model.rb", "lib/generators/humpyard/element/templates/tests", "lib/generators/humpyard/element/templates/tests/rspec", "lib/generators/humpyard/element/templates/tests/rspec/model.rb", "lib/generators/humpyard/element/templates/tests/shoulda", "lib/generators/humpyard/element/templates/tests/shoulda/model.rb", "lib/generators/humpyard/element/templates/tests/testunit", "lib/generators/humpyard/element/templates/tests/testunit/model.rb", "lib/generators/humpyard/element/USAGE", "lib/generators/humpyard/skeleton", "lib/generators/humpyard/skeleton/skeleton_generator.rb", "lib/generators/humpyard/skeleton/templates", "lib/generators/humpyard/skeleton/templates/compass.config", "lib/generators/humpyard/skeleton/templates/images", "lib/generators/humpyard/skeleton/templates/images/grid.png", "lib/generators/humpyard/skeleton/templates/initializers", "lib/generators/humpyard/skeleton/templates/initializers/compass.rb", "lib/generators/humpyard/skeleton/templates/initializers/haml.rb", "lib/generators/humpyard/skeleton/templates/initializers/humpyard.rb", "lib/generators/humpyard/skeleton/templates/javascripts", "lib/generators/humpyard/skeleton/templates/javascripts/jquery-ui-18", "lib/generators/humpyard/skeleton/templates/javascripts/jquery-ui-18/javascripts", "lib/generators/humpyard/skeleton/templates/javascripts/jquery-ui-18/javascripts/jquery-1.4.2.min.js", "lib/generators/humpyard/skeleton/templates/javascripts/jquery-ui-18/javascripts/jquery-humpyard.js", "lib/generators/humpyard/skeleton/templates/javascripts/jquery-ui-18/javascripts/jquery-rails.js", "lib/generators/humpyard/skeleton/templates/javascripts/jquery-ui-18/javascripts/jquery-ui-1.8.custom.min.js", "lib/generators/humpyard/skeleton/templates/javascripts/jquery-ui-18/javascripts/jquery.form-2.43.js", "lib/generators/humpyard/skeleton/templates/javascripts/jquery-ui-18/stylesheets", "lib/generators/humpyard/skeleton/templates/javascripts/jquery-ui-18/stylesheets/smoothness", "lib/generators/humpyard/skeleton/templates/javascripts/jquery-ui-18/stylesheets/smoothness/images", "lib/generators/humpyard/skeleton/templates/javascripts/jquery-ui-18/stylesheets/smoothness/images/ui-bg_flat_0_aaaaaa_40x100.png", "lib/generators/humpyard/skeleton/templates/javascripts/jquery-ui-18/stylesheets/smoothness/images/ui-bg_flat_75_ffffff_40x100.png", "lib/generators/humpyard/skeleton/templates/javascripts/jquery-ui-18/stylesheets/smoothness/images/ui-bg_glass_55_fbf9ee_1x400.png", "lib/generators/humpyard/skeleton/templates/javascripts/jquery-ui-18/stylesheets/smoothness/images/ui-bg_glass_65_ffffff_1x400.png", "lib/generators/humpyard/skeleton/templates/javascripts/jquery-ui-18/stylesheets/smoothness/images/ui-bg_glass_75_dadada_1x400.png", "lib/generators/humpyard/skeleton/templates/javascripts/jquery-ui-18/stylesheets/smoothness/images/ui-bg_glass_75_e6e6e6_1x400.png", "lib/generators/humpyard/skeleton/templates/javascripts/jquery-ui-18/stylesheets/smoothness/images/ui-bg_glass_95_fef1ec_1x400.png", "lib/generators/humpyard/skeleton/templates/javascripts/jquery-ui-18/stylesheets/smoothness/images/ui-bg_highlight-soft_75_cccccc_1x100.png", "lib/generators/humpyard/skeleton/templates/javascripts/jquery-ui-18/stylesheets/smoothness/images/ui-icons_222222_256x240.png", "lib/generators/humpyard/skeleton/templates/javascripts/jquery-ui-18/stylesheets/smoothness/images/ui-icons_2e83ff_256x240.png", "lib/generators/humpyard/skeleton/templates/javascripts/jquery-ui-18/stylesheets/smoothness/images/ui-icons_454545_256x240.png", "lib/generators/humpyard/skeleton/templates/javascripts/jquery-ui-18/stylesheets/smoothness/images/ui-icons_888888_256x240.png", "lib/generators/humpyard/skeleton/templates/javascripts/jquery-ui-18/stylesheets/smoothness/images/ui-icons_cd0a0a_256x240.png", "lib/generators/humpyard/skeleton/templates/javascripts/jquery-ui-18/stylesheets/smoothness/jquery-ui-1.8.custom.css", "lib/generators/humpyard/skeleton/templates/stylesheets", "lib/generators/humpyard/skeleton/templates/stylesheets/ie.sass", "lib/generators/humpyard/skeleton/templates/stylesheets/partials", "lib/generators/humpyard/skeleton/templates/stylesheets/partials/_base.sass", "lib/generators/humpyard/skeleton/templates/stylesheets/print.sass", "lib/generators/humpyard/skeleton/templates/stylesheets/screen.sass", "lib/generators/humpyard/skeleton/templates/views", "lib/generators/humpyard/skeleton/templates/views/layout.html.haml", "lib/generators/humpyard/skeleton/USAGE", "lib/generators/humpyard.rb", "lib/humpyard", "lib/humpyard/action_controller", "lib/humpyard/action_controller/base.rb", "lib/humpyard/action_view", "lib/humpyard/action_view/form_helper.rb", "lib/humpyard/active_record", "lib/humpyard/active_record/acts", "lib/humpyard/active_record/acts/container_element.rb", "lib/humpyard/active_record/acts/element.rb", "lib/humpyard/compass.rb", "lib/humpyard/config.rb", "lib/humpyard/engine.rb", "lib/humpyard/form_builder.rb", "lib/humpyard.rb", "lib/tasks", "lib/tasks/humpyard.rake", "app/controllers/humpyard/elements_controller.rb", "app/controllers/humpyard/pages_controller.rb", "app/helpers/humpyard/pages_helper.rb", "app/models/humpyard/element.rb", "app/models/humpyard/elements", "app/models/humpyard/elements/box_element.rb", "app/models/humpyard/elements/text_element.rb", "app/models/humpyard/page.rb", "app/models/humpyard/publish_range_validator.rb", "app/views/humpyard/common", "app/views/humpyard/common/_head.html.haml", "app/views/humpyard/common/_page_construct.html.haml", "app/views/humpyard/elements", "app/views/humpyard/elements/_edit.html.haml", "app/views/humpyard/elements/_inline_edit.haml", "app/views/humpyard/elements/_new.html.haml", "app/views/humpyard/elements/_show.html.haml", "app/views/humpyard/elements/_show_container.html.haml", "app/views/humpyard/elements/_show_view.html.haml", "app/views/humpyard/elements/box_elements", "app/views/humpyard/elements/box_elements/_edit.html.haml", "app/views/humpyard/elements/box_elements/_inline_edit.html.haml", "app/views/humpyard/elements/box_elements/_show.html.haml", "app/views/humpyard/elements/destroy.js.erb", "app/views/humpyard/elements/text_elements", "app/views/humpyard/elements/text_elements/_edit.html.haml", "app/views/humpyard/elements/text_elements/_inline_edit.html.haml", "app/views/humpyard/elements/text_elements/_show.html.haml", "app/views/humpyard/forms", "app/views/humpyard/forms/_datetime_input.html.haml", "app/views/humpyard/forms/_file_input.html.haml", "app/views/humpyard/forms/_form.html.haml", "app/views/humpyard/forms/_image_file_input.html.haml", "app/views/humpyard/forms/_input.html.haml", "app/views/humpyard/forms/_string_input.html.haml", "app/views/humpyard/forms/_submit.html.haml", "app/views/humpyard/forms/_text_input.html.haml", "app/views/humpyard/pages", "app/views/humpyard/pages/_edit.html.haml", "app/views/humpyard/pages/_index.html.haml", "app/views/humpyard/pages/_subtree.html.haml", "app/views/humpyard/pages/show.html.haml", "app/views/humpyard/pages/welcome.html.haml", "config/routes.rb", "config/locales/en.yml", "db/migrate/20100321134138_base.rb", "db/migrate/20100330204700_create_box_element.rb", "db/migrate/20100401153655_page_template.rb", "compass/stylesheets", "compass/stylesheets/_humpyard.sass", "compass/stylesheets/humpyard", "compass/stylesheets/humpyard/_base.sass", "compass/stylesheets/humpyard/_ie.sass", "compass/stylesheets/humpyard/_jquery_ui_overrides.sass", "compass/stylesheets/humpyard/_print.sass", "compass/templates", "VERSION", "README.rdoc", "Gemfile"]
  s.homepage = %q{http://humpyard.org/}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Humpyard is a Rails CMS}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<builder>, [">= 0"])
      s.add_runtime_dependency(%q<rails>, [">= 3.0.0.beta"])
      s.add_runtime_dependency(%q<haml>, [">= 2.2.20"])
      s.add_runtime_dependency(%q<acts_as_tree>, [">= 0.1.1"])
      s.add_runtime_dependency(%q<globalize2>, [">= 0.2.0"])
    else
      s.add_dependency(%q<builder>, [">= 0"])
      s.add_dependency(%q<rails>, [">= 3.0.0.beta"])
      s.add_dependency(%q<haml>, [">= 2.2.20"])
      s.add_dependency(%q<acts_as_tree>, [">= 0.1.1"])
      s.add_dependency(%q<globalize2>, [">= 0.2.0"])
    end
  else
    s.add_dependency(%q<builder>, [">= 0"])
    s.add_dependency(%q<rails>, [">= 3.0.0.beta"])
    s.add_dependency(%q<haml>, [">= 2.2.20"])
    s.add_dependency(%q<acts_as_tree>, [">= 0.1.1"])
    s.add_dependency(%q<globalize2>, [">= 0.2.0"])
  end
end
