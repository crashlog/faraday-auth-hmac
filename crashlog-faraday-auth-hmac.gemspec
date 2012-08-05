# -*- encoding: utf-8 -*-
require File.expand_path('../lib/crash_log/faraday/auth_hmac/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Ivan Vanderbyl"]
  gem.email         = ["ivan@crashlog.io"]
  gem.description   = %q{Faraday AuthHMAC Request Signing Middelware}
  gem.summary       = %q{Authenticates Faraday requests with HMAC}
  gem.homepage      = "http://crashlog.io"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "crashlog-faraday-auth-hmac"
  gem.require_paths = ["lib"]
  gem.version       = CrashLog::Faraday::AuthHMAC::VERSION

  gem.add_dependency('faraday', [">= 0.7.2"])
  gem.add_dependency('crashlog-auth-hmac', ["~> 1.1.2"])
end
