# System-wide .cshrc file for csh(1).

if ($?prompt) then
	set promptchars = "%#"
	if ($?tcsh) then
		set prompt = "[%m:%c3] %n%# "
	else
		set prompt = "[%m:%c3] `id -nu`%# "
	endif
endif

# ADD RUSH TO PATH
if ( "$path" !~ */usr/local/rush* ) set path = ( $path /usr/local/rush/bin )

