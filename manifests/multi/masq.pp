# ex:ts=4 sw=4 tw=72

define shorewall::multi::masq (
	$sources,
) {

	concat::fragment { "masq-${name}":
		order   => '50',
		target  => '/etc/shorewall/masq',
		content => inline_template("<% sources.each { |source| %><%= name %> <%= source %><% } %>\n"),
	}

}	
