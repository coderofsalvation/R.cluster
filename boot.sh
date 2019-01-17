# add scripts here
Rscript my.R &

{ sleep 10m; echo "process took longer than 10 mins"; exit 1; } &
wait # wait for all processes to finish
