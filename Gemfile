source 'https://rubygems.org'
gemspec

%w[ars-medium ars-familiar ars-doppelganger ars-terra].each do |lib|
  lib_path = ::File.expand_path("../../#{lib}", __FILE__)
  lib_path = false unless ::File.exists? lib_path
  if lib_path
    gem lib, :path => lib_path
  end
end

gem 'rake'
gem 'rspec', '~> 3'

gem 'mongoid'

gem 'gem-release'
gem 'appraisal'

gem 'yard', require: false

