servedir: serve a directory over HTTP from behind NAT
=====================================================

`servedir` is a tiny Ruby program used to serve a directory over HTTP from
boxes that are behind a NAT (most ADSL users).

`servedir` does not require any additional library and is compatible with
Ruby 1.8.7, Ruby 1.9.3 and JRuby.

This program will not try to open ports on the NAT gateway: it expects ports
to be already configured in the proper way.

Usage
-----

On the box behind NAT:

    $ servedir ~/Public 13428

    Server starting... (CTRL-C to terminate)
      local address: <http://localhost:13428/>
      public address: <http://84.136.123.62:13428/>

    [2012-02-11 13:24:01] INFO  WEBrick 1.3.1
    [2012-02-11 13:24:01] INFO  ruby 1.8.7 (2010-01-10) [x86_64-linux]
    [2012-02-11 13:24:01] INFO  WEBrick::HTTPServer#start: pid=8207 port=13428

From another computer:

    $ w3m -dump http://84.136.123.62:13428/
    Index of /

     Name                          Last modified         Size
    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

     Parent Directory              2012/02/11 13:28      -
     bus timetable.pdf             2011/10/09 11:04      136856
     facesofprotest.pdf            2011/04/09 15:15      5531985
     Country pictures 2010/        2011/04/12 22:41      -
     fav_webradios.xml             2009/10/28 17:20      854

    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

    WEBrick/1.3.1 (Ruby/1.8.7/2010-01-10)
    at localhost:13428


Authors
-------

* Gioele Barabucci <http://svario.it/gioele>


License
-------

This is free and unencumbered software released into the public domain.
See the `UNLICENSE` file or <http://unlicense.org/> for more details.

