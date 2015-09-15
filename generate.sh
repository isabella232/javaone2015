#!/bin/bash

# fail if anything errors
set -e
# fail if a function call is missing an argument
set -u


function render {
    echo "--------------------"
    echo -e "Started Processing $1\n"
    asciidoc -a data-uri --backend slidy2 --attribute stylesheet=`pwd`/src/simpligility-slidy.css -o $1.html src/$1.asciidoc
    echo "  Built $1.html"
    
#    a2x -k -fpdf --dblatex-opts="-P toc.section.depth=1 -P latex.output.revhistory=0 -P doc.publisher.show=0" -D `pwd` src/$1.asciidoc
#    echo "  Built $1.pdf"
#    rm $1.xml

    echo -e "Completed Processing $1\n"
}

render still-rocking-it-maven
