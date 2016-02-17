name             'email_handler'
maintainer       'Mayank Gangwal'
maintainer_email 'mayank.gangwal@gmail.com'
license          'All rights reserved'
description      'Email me on every chef run'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'
depends "chef_handler"
depends "postfix"
depends "mailx"
