# System-wide .login file for csh(1).

if ( -x /usr/libexec/path_helper ) then
	eval `/usr/libexec/path_helper -c`
endif

# ADD RUSH TO PATH
if ( "$path" !~ */usr/local/rush* ) set path = ( $path /usr/local/rush/bin )

