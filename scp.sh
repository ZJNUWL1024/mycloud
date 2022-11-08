DIR=$1
echo "[log] file path is $DIR"
while true
do
flag=$2
case $flag in
	-u|--upload)
		file=$3
		param=$4
		echo "[log] upload now..."
		break;;
	-d|--download)
		echo "[log] start download"
		scp root@81.68.219.195:/usr/wl1024/halo/* $DIR
		echo "[log] end download"
		break;;
	*)
		echo "[log] nothing happened"
		break;;
	esac
        shift
done

bname=$(basename $file)
if [[ "$bname" =~ ^\..* ]]
then
echo "[log] no need to scp"
exit
fi

if [ "$flag" = "-u" ];
then
echo "[log] upload file:$file"
while true
do
	case $param in
		-s|--server)
		server=$5
		 echo "server is : $server"
		scp $file root@$server:/usr/wl1024/halo		 
		break;;
		-p|--port)
		echo "port is : $5";
		shift;;
		*) echo "using default server:81.68.219.195"
		scp $file root@81.68.219.195:/usr/wl1024/halo
		break;;
	esac
	shift
done
# scp $file root@$server:/usr/wl1024/halo
fi
