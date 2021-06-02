# Home

Various home files

## Dotfiles

Link to home

    ./link_dotfiles.sh

## Emacs Daemon settings

Add to launch control

    cp startEmacsDaemon.sh /usr/local/bin
    cp com.user.loginscript.plist ~/Library/LaunchAgents
    launchctl load ~/Library/LaunchAgents/com.user.loginscript.plist

To test it

    launchctl start com.user.loginscript

## Android emulator start script

    ln -sf $(pwd)/emu /usr/local/bin
