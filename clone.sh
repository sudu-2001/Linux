#!/bin/bash

repos=(

	"Python"
	"Data-Science"
	"Node.js"
	"DSA"
	"java"
	"Docker"

)

for repo in "${repos[@]}"

do

	git clone https://github.com/sudu-2001/$repo.git

done
