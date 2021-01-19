# frozen_string_literal: true

require_relative 'lib/ped/version'

Gem::Specification.new do |spec|
  spec.name = 'ped'
  spec.version = Ped::VERSION
  spec.authors = ['Igor Alexandrov']
  spec.email = ['igor.alexandrov@gmail.com']

  spec.summary = 'PED – check you email domain over list of Public Email Domains. Based on data from this GIST https://gist.github.com/tbrianjones/5992856'
  spec.homepage = 'https://github.com/igor-alexandrov/ped'
  spec.license = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.6.0')

  spec.metadata['homepage_uri'] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
