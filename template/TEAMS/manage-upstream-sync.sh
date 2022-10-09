

for f in ITESO*/;
do
  printf "\n\nWorking on Upstream Sync for Repo: $f \n"
  (cd $f; git checkout professor; git pull --rebase upstream master; git push origin professor --force; git checkout master)
  echo "> $f Okay"
done

