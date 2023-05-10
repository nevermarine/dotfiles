function pms --wraps='$SUDO_CMD pkg_add' --description 'alias pms $SUDO_CMD pkg_add'
  $SUDO_CMD pkg_add $argv
        
end
