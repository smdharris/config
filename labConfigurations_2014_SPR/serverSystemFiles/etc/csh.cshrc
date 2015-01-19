# System-wide .cshrc file for csh(1).

if ($?prompt) then
	set promptchars = "%#"
	if ($?tcsh) then
		set prompt = "[%m:%c3] %n%# "
	else
		set prompt = "[%m:%c3] `id -nu`%# "
	endif
endif

####  look to the /usr/local/etc/... config files
if ( -e /usr/local/etc/csh.cshrc ) then
	source /usr/local/etc/csh.cshrc
endif