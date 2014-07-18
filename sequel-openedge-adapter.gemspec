# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.name          = 'sequel-openedge-adapter'
  gem.version       = '0.1.0'

  gem.authors       = ['gimoh']
  gem.email         = ['gimoh@bitmessage.ch']
  gem.summary       = %q{Sequel adapter for OpenEdge RDBMS}
  gem.description   = %q{
== About
Sequel adapter for OpenEdge RDBMS.

Can use ODBC/JDBC drivers provided by DataDirect, bundled with OpenEdge or
from client networking installation.

See project readme for details.
}
  gem.homepage      = 'https://github.com/gimoh/sequel-openedge-adapter'
  gem.license       = 'MIT'

  gem.requirements  = 'OpenEdge ODBC/JDBC driver'

  gem.add_runtime_dependency 'sequel', '~> 4.12'

  gem.files         = `git ls-files`.split("\n")
end
