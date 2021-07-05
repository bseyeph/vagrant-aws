$:.unshift File.expand_path('lib', __dir__)
require 'vagrant-aws/version'

Gem::Specification.new do |spec|
  spec.name          = 'vagrant-aws'
  spec.version       = VagrantPlugins::AWS::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.license       = 'MIT'
  spec.authors       = ['Mitchell Hashimoto', 'Brian Sypher']
  spec.email         = 'bseyeph@gmail.com'
  spec.homepage      = 'https://github.com/bseyeph/vagrant-proxmox'
  spec.summary       = 'Enables Vagrant to manage machines in EC2 and VPC.'
  spec.description   = 'Enables Vagrant to manage machines in EC2 and VPC.'
  spec.required_ruby_version = '>= 2.5'
  spec.required_rubygems_version = '>= 3.0.0'
  spec.add_runtime_dependency 'fog-aws', '~> 3.10.0'
  spec.add_runtime_dependency 'iniparse', '~> 1.5.0'
  spec.add_development_dependency 'cucumber', '~> 6.1.0'
  spec.add_development_dependency 'geminabox', '~> 1.4.1'
  spec.add_development_dependency 'rake', '~> 13.0.3'
  spec.add_development_dependency 'rspec', '~> 3.10.0'
  spec.add_development_dependency 'rspec-its', '~> 1.3.0'

  spec.files = Dir.glob('lib/**/*.rb') + Dir.glob('locales/**/*.yml')
  spec.test_files = Dir.glob 'spec/**/*.rb'
  spec.require_paths = %w[lib]
end
