jup() {                                                                         
    cd                                                                          
    _OLD_VENV="$VIRTUAL_ENV"                                                    
    workon three                                                                
    screen -d -m -S jup jupyter notebook                                               
    deactivate three                                                            
    cd $OLDPWD                                                                  
    if [ -z ${_OLD_VENV+x} ]; then                                              
        workon "$_OLD_VENV"                                                     
        unset _OLD_VENV                                                         
    fi                                                                          
}                                                                               
