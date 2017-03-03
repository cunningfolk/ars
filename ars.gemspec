# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ars/version'

Gem::Specification.new do |spec|
  spec.name          = "ars"
  spec.version       = Ars::VERSION
  spec.authors       = ["Michael Lee Vazquez"]
  spec.email         = ["magnus.nothus@gmail.com"]

  spec.summary       = %q{ars-#{Ars::VERSION}}
  spec.description   = %q{Ruby Web Client that syncs with most models}
  spec.homepage      = "http://github.com/cunningfolk/ars"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  %w[medium familiar doppelganger].each do |lib_name|
    if Ars::VERSION =~ /[a-zA-Z]+/
      spec.add_runtime_dependency "ars-#{lib_name}", "= #{Ars::VERSION}"
    else
      spec.add_runtime_dependency "ars-#{lib_name}", "~> #{Ars::VERSION.sub(/^((?:\d+\.){2}).*$/, '\10')}"
    end
  end

end
