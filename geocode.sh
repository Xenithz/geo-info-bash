#!/bin/bash
ExecCoords() {
    curl https://geo-info.co/"$1","$2" | jq -C '.';
}

ExecSearch() {
    curl https://geo-info.co/"$1" | jq -C '.';
}

# neat little way of running functions from outside the script
Exec$1 "$2" "$3"