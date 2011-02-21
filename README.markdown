Javascript TextMate bundle
==========================

    Runs javascript directly using Cmd+R
    Replaces lines or whole document using # markers just like Ruby
    #+tab to create markers, and Shift+Control+Cmd+E to execute
    
    use console.log to output 

Installation
============

    mkdir -p ~/Library/Application\ Support/TextMate/Bundles
    cd ~/Library/Application\ Support/TextMate/Bundles
    git clone git://github.com/JamesKyburz/Javascript-bundle.git "James\'\ Javascript.tmbundle"
    osascript -e 'tell app "TextMate" to reload bundles'
    