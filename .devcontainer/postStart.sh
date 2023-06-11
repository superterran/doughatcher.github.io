#!/bin/bash
if [ -n "$CODESPACE_NAME" ]; then
    make run-codespaces
else
    make run
fi