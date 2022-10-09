

for f in ITESO*/;
do
  printf "\n\nWorking on Local Sync for Repo: $f \n"
  (cd $f; git checkout master; git fetch --all; git pull origin master; echo "> $f Okay")
done
