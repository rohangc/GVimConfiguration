Usage guide:
-----------

Installation:
------------

    1. This configuration is compatible with Linux only.
    2. Install Vim (9.1.0345 or above) ... obviously!
        a. The default path for '$XDG_CONFIG_HOME' is used here ($HOME/.config).
            1. Hence, *do not* set environment variable '$XDG_CONFIG_HOME'

    3. Install the following software and ensure that Vim and all these binaries are accessible via your '$PATH' environment variable:
        a. Git (should also automatically install Curl)
        b. Python - the same architecture as that of your Vim (x86/x64)
           If you are prevented from installing Python on your system due to any reason:
                1. Extract the Python distributable binaries into the same directory where the Vim binaries lie.
                2. Temporarily add a path to this directory while compiling 'YouCompleteMe'.
        c. ctags
        d. Node.js (for the Github Copilot plugin)
        e. cmake
                1. As mentioned in the YouCompleteMe manual, if you don't use cmake, you may need to install and configure your build system to use a utility such as 'compiledb' or 'Bear' to create compilation databases.

    4. Copy only the following files from this repository into your '$HOME' directory.
        a. Directory: '.config' and all its subdirectories.
        b. 'GvimConfigure.sh'
    
    5. Invoke a shell with access to Git and do the following:
        a. Navigate to your '$HOME' directory.
        b. Execute the script 'GvimConfigure.sh'.
            1. Ignore errors about missing theme 'Alduin'.

    6. Build 'YouCompleteMe' according to instructions on its website: http://valloric.github.io/YouCompleteMe.
        a. In brief: 
            2. Navigate to directory: $HOME/.config/vim/.vim/bundle/YouCompleteMe.
            3. Execute: "python ./install.py --clangd-completer".

    7. Copy '.clang-tidy' (after modifying to your heart's content) into the 'root' directory that holds all your projects.

    8. Restart Vim.

Update:
------

    1. Command line: Invoke a "Git Shell" and execute the following commands:        
        b. "vim +PluginUpdate +qall".

    2. From within Vim: ":PluginUpdate".


Some useful links:
-----------------
C++:
---

1. YouCompleteMe C family documentation: https://github.com/ycm-core/YouCompleteMe#c-family-semantic-completion
2. Configure CMake (required by YouCompleteMe) to generate a compilation database: https://github.com/ycm-core/YouCompleteMe#c-family-semantic-completion
3. Force CMake to build your project using all available cores on your system: https://blog.kitware.com/cmake-building-with-all-your-cores
4. Use Clang (instead of MSVC) to build projects in Visual Studio: https://docs.microsoft.com/en-us/cpp/build/clang-support-msbuild
5. Clangd documentation: https://clangd.llvm.org/installation

Python:
------

1. YouCompleteMe Python documentation: https://github.com/ycm-core/YouCompleteMe#python-semantic-completion
2. Python semantic code completion support is through the JEDI engine: https://github.com/davidhalter/jedi
