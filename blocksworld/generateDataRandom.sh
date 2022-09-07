# Generate a dataset with 3 operators between 1-6 blocks

o=3
path="random-mix-3ops"

if [ ! -d $path ]
  then
  mkdir $path
  for ((n=0;n<5000;n++)); do
    blocks=$(shuf -i 3-6 -n 1)
    ./blocksworld $o $blocks > $path/$n.txt
  done
fi

