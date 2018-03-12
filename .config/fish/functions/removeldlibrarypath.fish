function removeldlibrarypath
	if set -l index (contains -i $argv[1] $LD_LIBRARY_PATH)
        set --erase LD_LIBRARY_PATH[$index]
        echo "Updated LD_LIBRARY_PATH: $LD_LIBRARY_PATH"
    else
        echo "$argv[1] not found in LD_LIBRARY_PATH: $LD_LIBRARY_PATH"
    end
end
