readme = File.open('README.md').read.split("\n\n").map { |pr| pr.lines.map(&:strip) }
version = `git tag | tail -n 1`.sub(/^v/, '')
summary = readme[0].first.sub('servedir: ', '')
description = readme[1].to_a.join('').gsub('`', '')

Gem::Specification.new do |spec|
	spec.name     = 'servedir'
	spec.version  = version

	spec.authors  = ['Gioele Barabucci']
	spec.email    = ['gioele@svario.it']
	spec.homepage = 'https://github.com/gioele/servedir'
	spec.summary  = summary
	spec.license  = 'COPYING'
 
	spec.files        = %w(bin/servedir) + %w(README.md COPYING)
	spec.executables  = ['servedir']
end
