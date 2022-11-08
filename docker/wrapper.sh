#!/usr/bin/env bash
#Author: Sean Donnellan
#call plantul java to make plantumls

outDir="/data"
appDir="/opt/app"
jarName=$(basename ${jarURL})
callPlantuml="java -jar ${appDir}/${jarName}"

#go to data volume
cd $outDir

#if this is a test run copy the test files across
if [ $1 = "/opt/app/reference.plantuml" ]; then
    cp ${appDir}/reference.asciidoc $outDir
    cp ${appDir}/reference.plantuml $outDir
fi

#make the SVGs and PNGs
$callPlantuml -o $outDir -tsvg $@
$callPlantuml -o $outDir -tpng $@
