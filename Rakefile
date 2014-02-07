# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'proximity-motion'

  app.frameworks += %w(CoreLocation)

  app.info_plist['UIBackgroundModes'] = ['fetch']

  app.vendor_project('vendor/ProximityKit.framework', :static,  :products => ['ProximityKit'], :headers_dir => 'Headers')

end
