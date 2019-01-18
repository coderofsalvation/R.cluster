# run scripts in 'script'-folder 
ls script/*.R | xargs Rscript &

# publish www-folder to website
mkdir ~/.ssh && echo "$GH_KEY" > ~/.ssh/id_rsa.gh
git remote set-url origin git@github.com:coderofsalvation/R.cluster.git
git subtree push --prefix www origin gh-pages

{ sleep 10m; echo "process took longer than 10 mins"; exit 1; } &
wait # wait for all processes to finish
