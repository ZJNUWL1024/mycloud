DIR=$1
if ! type fswatch >/dev/null 2>&1; then
    echo 'fswatch not installed';
    brew install fswatch;
else
    echo 'ok';
    echo $(fswatch --version);
fi
nohup ./fswatch.sh $DIR >output.log 2>&1 &
