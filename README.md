# Log-Search
Bash script to search log files for ip addresses intended to work with wireshark JSON exports.

1. Clone this repo to your machine.
   
2.Make sure you are using a bash shell.

3 After exporting your scan file from wireshark...

USAGE

cd into the directory where you cloned the script.
Then run the script as shown below.

  [ ./Log_search_script.sh ] - runs the script
  [ wiresharkscan.json ] - The first argument is the filename you want to scan
  [  192.168.56.1 ] - the second argument is the IP address you want to search for
  Hit enter and run the scan.
![image](https://github.com/XalvarezX/Log-Search/assets/169691312/79f72038-7ca3-4579-9a87-0f09bb0cc650)


Your output should display the IP if its found and the line in the file where it was found.
![image](https://github.com/XalvarezX/Log-Search/assets/169691312/1a421678-e754-43ef-b279-a8c21d25a59d)

Use this to search for malicious ip addresse on your network or to track somone on the network to see what they were searching.
