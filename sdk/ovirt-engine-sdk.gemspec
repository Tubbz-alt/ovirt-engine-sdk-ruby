#--
# Copyright (c) 2015 Red Hat, Inc.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#++

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib)
require 'ovirt/sdk/v4/version'

Gem::Specification.new do |spec|

  # Basic information:
  spec.name        = 'ovirt-engine-sdk'
  spec.version     = Ovirt::SDK::V4::VERSION
  spec.summary     = 'oVirt SDK'
  spec.description = 'Ruby SDK for the oVirt Engine API.'
  spec.authors     = ['Juan Hernandez']
  spec.email       = ['jhernand@redhat.com']
  spec.license     = 'Apache-2.0'
  spec.homepage    = 'http://ovirt.org'

  # Ruby version:
  spec.required_ruby_version = '>= 1.9'

  # Runtime dependencies:
  spec.add_runtime_dependency('curb', '~> 0.8')

  # Build time dependencies:
  spec.add_development_dependency('rspec', '~> 3.3')

  # Extensions:
  spec.extensions = [
    'ext/ovirtsdk/extconf.rb',
  ]

  # Files:
  spec.files = Dir.glob([
    'LICENSE.txt',
    'README.md',
    'ext/**/*.{rb,c,h}',
    'lib/**/*.rb',
  ])

  # Use Markdown for the documentation:
  spec.rdoc_options = [
    '--markup=markdown',
    '--main=README.md',
    '--exclude=pom.xml',
  ]

end