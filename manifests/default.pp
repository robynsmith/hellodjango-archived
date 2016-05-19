exec { "apt-update":
	path => "/usr/bin",
	command => "/usr/bin/apt-get update",
}

Exec["apt-update"] -> Package <| |>

package { "python-pip":
	ensure  => present
}

exec { "Install Django":
	path => "/usr/bin",
    command => "pip install django",
    require => Package["python-pip"],
}