# frozen_string_literal: true

require_relative 'lib/business-br/shipping/version'

Gem::Specification.new do |spec|
  spec.name          = 'business-br-shipping'
  spec.version       = Business::BR::Shipping::VERSION
  spec.authors       = ['Daniel Vinciguerra']
  spec.email         = ['daniel.vinciguerra@bivee.com.br']

  spec.summary       =
    'Shipping info lib that provide API integrations with brazilian companies.'
  spec.description   =
    'Shipping info lib that provide API integrations with brazilian companies.'
  spec.homepage      = 'https://github.com/dvinciguerra/business-br-shipping'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  # spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  # spec.metadata['changelog_uri'] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'http', '~> 4.4'
end
