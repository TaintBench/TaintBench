#!/bin/bash
echo Running clear.sh
if [ -d "results" ]; then 
   sudo rm /home/runner/work/TaintBench/TaintBench/AnalysisTools/FlowDroid_April_2017_Nightly/results/*
fi
