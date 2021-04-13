#! /bin/bash

message="hello there boys"
export message # that will make it global variable for all the other scripts you bring it here

./export2.sh

./some_basics/if.sh