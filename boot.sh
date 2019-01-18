# run scripts in 'script'-folder 
ls script/*.R | xargs Rscript &

git subtree push --prefix www origin gh-pages

{ sleep 10m; echo "process took longer than 10 mins"; exit 1; } &
wait # wait for all processes to finish
