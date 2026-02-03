#!/bin/bash

repos=(

"Data-Science"  
"Docker"  
"DSA"  
"java"  
"Linux"  
"Node.js"  
"Python"

)

for repo in "${repos[@]}"

do

	git clone https://github.com/sudu-2001/$repo.git

done

echo "Cloning done sucessfully"


