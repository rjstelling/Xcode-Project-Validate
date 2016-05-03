# Code Sign Xcode Project Validate

A very simple shell script to read `.xcodeproj` files and check if there are issues with the `CODE_SIGN_IDENTITY`. Having multiple entries can cause build errors (especially when Archiving or command line building). 

Link to StackOverflow question answering some questions about when and why to use this: http://stackoverflow.com/q/13962341/89035

## Usage: 
    $ ./cs_xproj_validate.sh path/to/xcode/project/file/theproject.xcodeproj