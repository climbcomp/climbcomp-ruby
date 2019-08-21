lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'climbcomp/version'

Gem::Specification.new do |spec|
  spec.name          = 'climbcomp'
  spec.version       = Climbcomp::VERSION
  spec.authors       = ['Skip Baney']
  spec.email         = ['twelvelabs@gmail.com']

  spec.summary       = 'Climbcomp gRPC files'
  spec.description   = 'Generated gRPC artifacts from https://github.com/climbcomp/climbcomp-proto'
  spec.homepage      = 'https://github.com/climbcomp/climbcomp-ruby'

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host']  = 'https://rubygems.org'
    spec.metadata['homepage_uri']       = spec.homepage
    spec.metadata['source_code_uri']    = 'https://github.com/climbcomp/climbcomp-ruby'
    spec.metadata['changelog_uri']      = 'https://github.com/climbcomp/climbcomp-proto/CHANGELOG.md'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = Dir['{exe,lib}/**/*']
  spec.files += [
    'LICENSE',
    'README.md',
    'VERSION',
  ]

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.17'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest', '~> 5.0'
end
