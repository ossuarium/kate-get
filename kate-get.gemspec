Gem::Specification.new do |spec|
	spec.name = 'kate-get'
	spec.version = '0.1.1'

	spec.author = 'Evan Boyd Sosenko'
	spec.summary = 'Kate external tool to intelligently copy open remote files to local directories.'

	spec.description = <<-EOF
		Kate-Get takes a space separated list of file paths and checks each one against a list of sources. If a match is found, the file is copied via rsync to a local directory. Options for each source are controlled by a config file.
	EOF

	spec.required_ruby_version = '>= 1.9.2'

	spec.requirements = 'rsync'

	require 'rake' # need this to use FileList
	spec.files = FileList[ 'lib/**/*.rb', '[A-Z]*', 'bin/*' ].to_a
	spec.bindir = 'bin'

	spec.executables = [ 'kate-get' ]

	spec.license = 'MIT'
end