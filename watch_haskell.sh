#!/bin/bash
set -e

nodemon --exec "./run_instructions.sh $1 $2 $3" -e .hs,.txt