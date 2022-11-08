
DIR=$1

echo "$DIR"

if [ ! -n "$DIR" ]
then
    echo "you have not choice Application directory !"
    exit
fi

fswatch $DIR | while read file
do
   echo "${file} was modify" >> ./reload.log 2>&1
   bash	./scp.sh $DIR -u ${file}
done
