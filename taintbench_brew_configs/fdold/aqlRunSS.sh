#!/bin/bash

mv SourcesAndSinks.txt SourcesAndSinks_bak.txt
cp -v ${5} SourcesAndSinks.txt

java -Xmx${1}g -cp soot-trunk.jar:soot-infoflow.jar:soot-infoflow-android.jar:slf4j-api-1.7.5.jar:slf4j-simple-1.7.5.jar:axml-2.0.jar soot.jimple.infoflow.android.TestApps.Test ${2} ${3} > ${4} 2>&1

rm SourcesAndSinks.txt
mv SourcesAndSinks_bak.txt SourcesAndSinks.txt
