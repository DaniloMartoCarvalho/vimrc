" ===== VIM-PLUG INSTALLATION ===== "

if !filereadable(vimplug_exists)

    if has('win32')&&!has('win64')
        let curl_exists=expand('C:\Windows\Sysnative\curl.exe')
    else
        let curl_exists=expand('curl')
    endif

    if !executable(curl_exists)
        echoerr 'You have to install curl or first install vim-plug yourself!'
        execute 'q!'
    endif

    echo 'Installing Vim-Plug...'

    silent exec '!'curl_exists' -fLo ' . shellescape(vimplug_exists) . ' --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

    autocmd VimEnter * PlugInstall

endif
