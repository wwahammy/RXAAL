spec = Gem::Specification.new do |s|
  s.name = 'RXAAL'
  s.version = '0.0.1'
  s.summary = "A library for creating eXtensible Algorithm Animation Language (XAAL) files."
  s.description = %{A library for creating eXtensible Algorithm Animation Language (XAAL) files.}
  s.files = Dir['lib/**/*.rb'] + Dir['test/**/*.rb']
  s.require_path = 'lib'
  s.has_rdoc = true
  s.add_dependency("darkfish-rdoc")
  s.extra_rdoc_files = Dir['[A-Z]*']
  s.rdoc_options << '--title' <<  'RXAAL' << 'darkfish'
  s.author = "Eric Schultz"
  s.email = "wwahammy@gmail.com"
  s.rubyforge_project = 'RXAAL'
end
