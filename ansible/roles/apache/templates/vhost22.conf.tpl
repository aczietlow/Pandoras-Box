# Default Apache virtualhost template
# Dynamic virtualhost file.
# http://httpd.apache.org/docs/2.2/vhosts/mass.html

<VirtualHost *:80>
    ServerAdmin webmaster@localhost
    # get the server name from the Host: header
    UseCanonicalName Off
    # Requests to 'pandora.dev' will be satified by '/var/www/pandora.dev/www/index.php'
    VirtualDocumentRoot {{ apache.www_root }}
    ServerName {{ apache.servername }}

    <Directory {{ apache.dir_root }}>
        Options FollowSymLinks
        AllowOverride None
        RewriteEngine On
        RewriteBase /
        RewriteCond %{REQUEST_FILENAME} !-f
        RewriteCond %{REQUEST_FILENAME} !-d
        RewriteRule /var/www/.*/www/(.*)$ index.php/?q=$1 [L,QSA]
        Order allow,deny
        Allow from all
    </Directory>

    <Directory />
    Options FollowSymLinks
    AllowOverride None
    </Directory>
</VirtualHost>
