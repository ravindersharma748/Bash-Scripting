# Bash-Scripting

#### create a script which counts GET, POSTS and DELETE requests from apache access log file

Suppose the path for apache is /var/log/httpd/access.log

Solution is in script count_access_log.sh


#### Create a script to take backup of all the file 

Suppose you have a directory call /var/log/httpd/ and there are 100 of files and you need to create a _bkp copy of all the files
e.g file name access.log shaould have a backup copy with name access.log_bkp


#### Apache GET, POSTS rewrite rules



    RewriteEngine   on
    RewriteCond %{REQUEST_METHOD} ^GET$ [NC]
    RewriteRule ^(.*)$ https://abc.example.com$1 [R=301,L]

    RewriteEngine   on
    RewriteCond %{REQUEST_METHOD} ^(GET|POST|PUT)$ [NC]
    RewriteCond %{REQUEST_URI} ^/tar/
    RewriteRule ^/tar/ https://abc.example.com/tar/ [R=301,L]



    RewriteCond %{REQUEST_METHOD} ^GET$ [NC]
    RewriteRule "\s" "balancer://read_cluster%{REQUEST_URI}" [P]
    RewriteCond %{REQUEST_METHOD} ^GET$ [NC]
    RewriteRule "!\s" "balancer://read_cluster%{REQUEST_URI}" [NE,P]
    ProxyPassReverse "/" "balancer://read_cluster/"


    RewriteCond %{REQUEST_URI} ^/tar/
    RewriteRule "\s" "balancer://read_cluster%{REQUEST_URI}" [P]
