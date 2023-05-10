function sv --wraps='$SUDO_CMD $EDITOR' --description 'alias sv $SUDO_CMD $EDITOR'
  $SUDO_CMD $EDITOR $argv
        
end
