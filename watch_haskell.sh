#!/bin/bash

set -e
nodemon --exec "./run_instructions.sh $1 $2" -e .hs,.txt