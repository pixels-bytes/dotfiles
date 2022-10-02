function xcd --wraps='cd "$(xplr --print-pwd-as-result)"' --description 'alias xcd=cd "$(xplr --print-pwd-as-result)"'
  cd "$(xplr --print-pwd-as-result)" $argv; 
end
