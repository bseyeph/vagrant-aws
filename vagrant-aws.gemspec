$:.unshift File.expand_path('lib', __dir__)
require 'vagrant-aws/version'

Gem::Specification.new do |spec|
  spec.name          = 'vagrant-aws'
  spec.version       = VagrantPlugins::AWS::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.license       = 'MIT'
  spec.authors       = 'Mitchell Hashimoto'
  spec.email         = 'mitchell@hashicorp.com'
  spec.homepage      = 'http://www.vagrantup.com'
  spec.summary       = 'Enables Vagrant to manage machines in EC2 and VPC.'
  spec.description   = 'Enables Vagrant to manage machines in EC2 and VPC.'

  spec.required_rubygems_version = '>= 3.1.2'
  spec.add_runtime_dependency 'fog-aws', '~> 3.12.0'
  spec.add_runtime_dependency 'iniparse', '~> 1.5.0'
  spec.add_development_dependency 'rake', '~> 13.0.3'
  # rspec 3.4 to mock File
  spec.add_development_dependency 'rspec', '~> 3.10.0'
  spec.add_development_dependency 'rspec-its', '~> 1.3.0'

  spec.files = Dir.glob('lib/**/*.rb')
  spec.files += Dir.glob('locales/**/*.yml')
  spec.test_files = Dir.glob('spec/**/*.rb')
  spec.require_paths = %w[lib]
end
