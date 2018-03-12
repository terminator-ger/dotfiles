function addldlibrarypaths
	contains -- $argv $LD_LIBRARY_PATH
       or set -xU LD_LIBRARY_PATH $LD_LIBRARY_PATH $argv
    echo "Updated LD_LIBRARY_PATH: $LD_LIBRARY_PATH"
end
