#!/usr/bin/env bash

cairo1-run \
    src/lib.cairo \
    --layout recursive \
    --trace_file program_trace.bin \
    --memory_file program_memory.bin \
    --proof_mode \
    --air_public_input program_public_input.json \
    --air_private_input program_private_input.json \
    --print_output