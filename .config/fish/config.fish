if status is-interactive
    # Commands to run in interactive sessions can go here
end

# https://gist.github.com/overtrue/f7cd321708ba917b8def
egrep "^export " ~/.bash_profile | while read e
	set var (echo $e | sed -E "s/^export ([A-Za-z_]+)=(.*)\$/\1/")
	set value (echo $e | sed -E "s/^export ([A-Za-z_]+)=(.*)\$/\2/")

	# remove surrounding quotes if existing
	set value (echo $value | sed -E "s/^\"(.*)\"\$/\1/")

	if test $var = "PATH"
		# replace ":" by spaces. this is how PATH looks for Fish
		set value (echo $value | sed -E "s/:/ /g")

		# use eval because we need to expand the value
		eval set -xg $var $value

		continue
	end

	# evaluate variables. we can use eval because we most likely just used "$var"
	set value (eval echo $value)

	#echo "set -xg '$var' '$value' (via '$e')"
	set -xg $var $value
end

# https://github.com/fish-shell/fish-shell/issues/3023#issuecomment-387944920
set PATH /Users/hliddiard/.nvm/versions/node/v12.22.1/bin $PATH
