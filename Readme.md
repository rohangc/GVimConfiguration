Usage guide:
-----------
    1. Install Vim ... obviously!

    2. Install the following software and ensure that Vim and all these binaries are accessible via your 'PATH' environment variable:
        a. Git
        d. Python - the same architecture as that of your Vim (x86/x64)
        e. ctags

    3. Invoke a command window (ensure that git.exe is in your system path) or invoke a "Git Shell".
       From within this command window, do the following:

        a. Clone this repository onto your PC by executing command: "git clone --recursive https://github.com/rohangc/GVimConfiguration".
           This will create a directory called 'GVimConfiguration'.

        b. Move all files from within the newly created directory, 'GVimConfiguration', into your 'HOME' directory. On Windows, this is usually 'C:\Users\<your login name>'.

        c. Navigate to your 'HOME' directory.

        d. Execute command: "git submodule foreach git pull origin master".

        e. Install plugins using one of the following methods (either of these will take a while, go grab a coffee):
            1. From within Vim:
                i.   Invoke GVim.
                ii.  Ignore all error messages.
                iii. Execute Vim command: ':PluginInstall'.
            2. From the command prompt:
                i.   Execute: 'vim +PluginInstall +qall'.

    4. Restart Vim.
