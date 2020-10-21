lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "fluent-plugin-in-kinesis"
  spec.version       = "0.0.2"
  spec.authors       = ["yusuke yamatani "]
  spec.email         = [""]

  spec.summary       = %q{Fluentd input plugin to read from Kinesis}
  #spec.description   = %q{To read from Kinesis}
  spec.homepage      = "https://github.com/yusukeyamatani/fluent-plugin-in-kinesis"
  spec.license       = "MIT"

  test_files, files  = `git ls-files -z`.split("\x0").partition do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.files         = files
  spec.executables   = files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = test_files
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "fluentd", [">= 1", "< 2"]
  spec.add_runtime_dependency "aws-sdk-kinesis", "~> 1"
  spec.add_runtime_dependency "multi_json", "~> 1.0"
   
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "test-unit", "~> 3.0"
end
