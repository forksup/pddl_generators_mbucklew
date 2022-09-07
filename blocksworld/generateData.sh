for ((o=4;o<5;o++)); do
  for ((j=4;j<5;j++)); do
    path="data/data-${j}blocks-${o}ops"
    #if [ ! -d $path ]
    #then
    mkdir $path
    for ((n=0;n<50000;n++)); do
      ./blocksworld $o $j > $path/$n.txt
    done
    #fi
  done
done


: '
o=3
path="random-mix"

if [ ! -d $path ]
  then
  mkdir $path
  for ((n=0;n<5000;n++)); do
    blocks=$(shuf -i 1-6 -n 1)
    ./blocksworld $o $blocks > $path/$n.txt
  done
fi
'