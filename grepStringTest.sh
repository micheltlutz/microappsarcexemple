#!/bin/bash

OUTPUT="Failing tests:
	MicroappArcExampleTests.testExample()

** TEST FAILED **"


if [[ "$OUTPUT" == *"FAILED"* ]]; then
  echo "It's there."
fi
# echo  {$OUTPUT | grep "FAILED"}