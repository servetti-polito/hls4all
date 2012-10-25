FILENAME=$1; 
RMFILENAME=$2;
NARGS=$#;
> playlist.txt
for ((i=3; i<=$NARGS; i++)); do
echo "${!i}" >> playlist.txt
done
echo "$FILENAME" >> playlist.txt
( echo "cd htdocs" ; echo "cd hls4all" ; echo "put $FILENAME" ; echo "put playlist.txt" ; echo "rm $RMFILENAME" ) | sftp -i ~/.ssh/d004112@polito.it.id_rsa -b - d004112@areeweb.polito.it 
