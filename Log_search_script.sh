
#! /bin/bash

#Make the first argument the file name to search
filename="$1"
#make the second argument the ip or list of ips you want to search for
sub="$2"

#create an alert function to alert on found ip address
 alert(){
     echo  -e "\033[1;31m$1\033[0m"
  }

#open file
if [ -f "$filename" ]; then
	#create a line counter
	file_line=0
	#loop over the lines in the file
	while IFS= read -r line; do
		#incriment the line counter
		(( file_line++ ))
		#if the substring (ip ) is found in the file line trigger the  alert function
		# todo update to accept list of ips #
		if echo "$line" | grep -q  "$sub"; then
			# alert that the ip was found and on what line of the file
			alert "IP: '$sub' found in '$filename'  on line: '$file_line'"
		#end the if statement
		fi
	#close the file
 	done < "$filename"
else
	# if the file is not found echo file not found
	echo "File not found: $filename"
fi


