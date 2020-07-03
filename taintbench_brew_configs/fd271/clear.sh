#!/bin/bash
echo Running clear.sh
if [ -d "results" ]; then 
   sudo rm /home/runner/work/TaintBench/TaintBench/AnalysisTools/FlowDroid_2.7.1_Release/results/*
fi
