#!/bin/bash
# simple html-css website template

echo -e "starting to do templating things"

cd ..
mkdir website-template
cd website-template

vim index.html -c '<!DOCTYPE html>\
<html>\
    <head>\
        <title></title>\
    </head>\
</html>' -c 'wq'

vim CNAME -c 'theflawlesshack.com' -c 'wq'
