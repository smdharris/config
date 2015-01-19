# System-wide .login file for csh(1).

# ADD RUSH TO PATH
if ( "$path" !~ */usr/local/rush* ) set path = ( $path /usr/local/rush/bin )

echo "Using /usr/local/etc/csh.login"