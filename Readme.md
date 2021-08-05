Usage guide:
-----------

Installation:
------------

    1. Install Vim ... obviously!
       Ensure that you choose to create a default '_vimrc' file in the $VIM directory.

    2. Install the following software and ensure that Vim and all these binaries are accessible via your 'PATH' environment variable:
        a. Git
        b. curl
        c. clangd - the same architecture as that of your Vim (x86/x64)
        d. Python - the same architecture as that of your Vim (x86/x64)
           If you are prevented from installing Python on your system due to any reason:
                1. Extract the Python distributable binaries into the same directory where the Vim binaries lie.
                2. Temporarily add a path to this directory while compiling 'YouCompleteMe'.
        e. ctags
        f. cmake
        g. Microsoft Visual C++ to build 'YouCompleteMe'. The Express edition will suffice.

    3. Invoke a "Git Shell" and do the following:

        a. Clone this repository onto your PC by executing command: "git clone --recursive https://github.com/rohangc/GVimConfiguration.git".
           This will create a directory called 'GVimConfiguration'.

        b. Move all files from within the newly created directory, 'GVimConfiguration', into your 'HOME' directory. On Windows, this is usually 'C:\Users\<your login name>'.

        c. Navigate to your 'HOME' directory.

        d. Execute command: "git submodule foreach git pull origin master".

        e. Install plugins using one of the following methods (either of these will take a while, go grab a coffee):
            1. From within Vim:
                i.   Invoke GVim (from within the "Git Shell" on Windows).
                ii.  Ignore all error messages.
                iii. Execute Vim command: ':PluginInstall'.
            2. From the command prompt ("Git Shell" on Windows):
                i.   Execute: "vim +PluginInstall +qall".

    4. Build 'YouCompleteMe' according to instructions on its site: http://valloric.github.io/YouCompleteMe.

    5. Restart Vim.

Update:
------

    1. Invoke a "Git Shell" and execute the following commands:
        a. "git submodule foreach git pull origin master".
        b. "vim +PluginUpdate +qall".

