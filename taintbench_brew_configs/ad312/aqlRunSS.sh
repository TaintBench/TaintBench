#!/bin/bash

# Update Sources and Sinks
if [ -d "~/.amandroid_stash/amandroid/taintAnalysis/sourceAndSinks/TaintSourcesAndSinks.txt" ]; then 
    sudo mv ~/.amandroid_stash/amandroid/taintAnalysis/sourceAndSinks/TaintSourcesAndSinks.txt ~/.amandroid_stash/amandroid/taintAnalysis/sourceAndSinks/TaintSourcesAndSinks_bak.txt  
fi

echo cp -v ${3} ~/.amandroid_stash/amandroid/taintAnalysis/sourceAndSinks/TaintSourcesAndSinks.txt
sudo cp -v ${3} ~/.amandroid_stash/amandroid/taintAnalysis/sourceAndSinks/TaintSourcesAndSinks.txt

# Clear Amandroid Results 
if [ -d "outputPath" ]; then 
    sudo rm -Rf outputPath
fi

# Run Amandroid
java -Xmx${2}g -jar argus-saf_2.12-3.1.2-assembly.jar t -o outputPath ${1}

# Restore Sources and Sinks
if [ -d "~/.amandroid_stash/amandroid/taintAnalysis/sourceAndSinks/TaintSourcesAndSinks.txt" ]; then 
    sudo rm -f ~/.amandroid_stash/amandroid/taintAnalysis/sourceAndSinks/TaintSourcesAndSinks.txt
fi 
if [ -d "~/.amandroid_stash/amandroid/taintAnalysis/sourceAndSinks/TaintSourcesAndSinks_bak.txt" ]; then 
    sudo mv ~/.amandroid_stash/amandroid/taintAnalysis/sourceAndSinks/TaintSourcesAndSinks_bak.txt ~/.amandroid_stash/amandroid/taintAnalysis/sourceAndSinks/TaintSourcesAndSinks.txt
fi 
