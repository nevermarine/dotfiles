function manp
	man -T pdf $argv | zathura --fork -P 1 -
end
