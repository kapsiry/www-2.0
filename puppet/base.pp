# Otherwise may get errors from puppet
group { "puppet": 
    ensure => "present", 
} 

# node default {
#   include ntp
#   # include apache
#   # 
#   # apache::vhost {'personal_site':
#   #   port    => 80,
#   #   docroot => '/var/www/personal',
#   #   options => 'Indexes MultiViews',
#   # }
#   # 
#   # apache::autovhosts {'vhosts':
#   #   vhostroot => '/srv/www',
#   # }
#   # 
# }
