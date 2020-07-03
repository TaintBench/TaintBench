#!/bin/bash
echo Running clear.sh
if [ -d "results" ]; then 
    sudo mkdir /home/runner/work/TaintBench/TaintBench/AnalysisTools/FlowDroid_April_2017_Nightly/savedResults
    sudo cp -a /home/runner/work/TaintBench/TaintBench/AnalysisTools/FlowDroid_April_2017_Nightly/results/. /home/runner/work/TaintBench/TaintBench/AnalysisTools/FlowDroid_April_2017_Nightly/savedResults/
    sudo rm /home/runner/work/TaintBench/TaintBench/AnalysisTools/FlowDroid_April_2017_Nightly/results/*
fi
