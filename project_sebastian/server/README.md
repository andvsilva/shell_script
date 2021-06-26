## Server - Apache

```bash
'apache2' - Apache Hypertext Transfer Protocol Server
```

```bash
'apache2' is the Apache HyperText Transfer Protocol  (HTTP)  server  pro‐
       gram.  It  is  designed  to be run as a standalone daemon process. When
       used like this it will create a pool of child processes or  threads  to
       handle requests.

       In  general,  apache2 should not be invoked directly, but rather should
       be invoked via /etc/init.d/apache2 or apache2ctl.  The  default  Debian
       configuration  requires  environment  variables  that  are  defined  in
       /etc/apache2/envvars and  are  not  available  if  apache2  is  started
       directly.   However, apache2ctl can be used to pass arbitrary arguments
       to apache2.

```

## Installation

```bash
sudo apt-get update
sudo apt-get install apache2
sudo apt-get install mysql-server

```

```bash
sudo apt-get install phpmyadmin
```
Select ```apache2``` as the web server by pressing ```Space``` and then ```Tab``` key and press ```enter``` key. (```<Ok>```)

![](pictures/apache2.png)

Press ```Yes``` to configure database for phpmyadmin.

![](pictures/database_phpmyadmin.png)

Provide password which we set as ```root``` earlier.

![](pictures/password_root_db.png)

Confirm it, and then you are done.

```bash
# Test phpMyAdmin
Now open 'http://localhost/phpmyadmin/' in your browser to access phpmyadmin and you can login with username and password both as root.

The requested URL /phpmyadmin/ was not found on this server.

Apache/2.4.25 (Debian) Server at localhost Port 80

########################################################
'WARNING': Does not work, BUT I know how to this!
#############################################################
```

## How to fix this: 

```bash
The requested URL /phpmyadmin/ was not found on this server.

## Please, see the steps below to fix this.
```

```bash
##################################
## Not Found
##################################
The requested URL /phpmyadmin/ was not found on this server.

Apache/2.4.25 (Debian) Server at localhost Port 80

'How to fix this:'

# First open the file apache2.conf
sudo -H gedit /etc/apache2/apache2.conf

# Second, add the line below in the end of the file 'apache2.conf'
Include /etc/phpmyadmin/apache.conf

# save and exit, done! go ahead.

# Third, restart apache, typing in the terminal
/etc/init.d/apache2 restart
[ ok ] Restarting apache2 (via systemctl): apache2.service.
```

### Localhost - Server
```bash
http://localhost/phpmyadmin/
```

```bash
# Now open again, 'http://localhost/phpmyadmin/' in your browser

# or type in terminal:
google-chrome http://localhost/phpmyadmin/

Fontconfig warning: "/etc/fonts/fonts.conf", line 100: unknown element "blank"
[6231:6231:0626/123242.111192:ERROR:sandbox_linux.cc(364)] InitializeSandbox() called with multiple threads in process gpu-process.
[6193:6213:0626/123242.246951:ERROR:browser_process_sub_thread.cc(209)] Waited 3 ms for network service
Opening in existing browser session.
```

Open the browser session, see below the login window in figure:

![](pictures/server_login.png)

Enter with the ```Username``` and ```password```
```bash
Username: phpmyadmin
Password: **********
```

![](pictures/server_localhost_logged.png)


### Resources

- [Welcome! - The Apache HTTP Server Project](https://httpd.apache.org/)
- [Quickly setup a localhost environment in Ubuntu](https://blog.ashfame.com/2011/03/quickly-setup-localhost-environment-ubuntu/)