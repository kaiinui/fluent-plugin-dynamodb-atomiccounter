# encoding: utf-8
$:.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |gem|
  gem.name        = "fluent-plugin-dynamodb-atomiccounter"
  gem.description = "Amazon DynamoDB atomic counter plugin for Fluent event collector"
  gem.homepage    = "https://github.com/bageljp/fluent-plugin-dynamodb-atomiccounter"
  gem.summary     = gem.description
  gem.version     = File.read("VERSION").strip
  gem.authors     = ["Keisuke Kadoyama"]
  gem.email       = "kadoyama.keisuke@gmail.com"
  gem.has_rdoc    = false
  #gem.platform    = Gem::Platform::RUBY
  gem.files       = `git ls-files`.split("\n")
  gem.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.require_paths = ['lib']

  gem.add_dependency "fluentd", "~> 0.10.0"
  gem.add_dependency "aws-sdk", ">= 1.5.2"
  gem.add_dependency "uuidtools", "~> 2.1.0"
  gem.add_development_dependency "rake", ">= 0.9.2"
end