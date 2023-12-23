getTime() {

    time="$(($(date +%s%3N) - $start))"
    sec=$(($time/1000))
    nanoSec=$(($time-($sec*1000)))
    case $nanoSec in
        [1-9])
        nanoSec=00$nanoSec
        ;;

    esac
    timeSec=$(date -u -d "@$sec" +%H:%M:%S)
    result=$timeSec","$nanoSec
}

//passing competitions

	pylonsApp := app.New(
		logger,
		db,
		nil,
		true, // load latest
		map[int64]bool{},
		pylons.DefaultNodeHome,
		simapp.FlagPeriodValue,
		app.MakeEncodingConfig(),
		simapp.EmptyAppOptions{},
		interBlockCacheOpt(),
	)

echo "===> Wait for setting up env"
sleep 10
#spam tx
echo "===> Begin test spam tx"
