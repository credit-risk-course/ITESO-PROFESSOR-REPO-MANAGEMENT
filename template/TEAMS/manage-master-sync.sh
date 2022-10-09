bash ./manage-local-sync.sh
bash ./manage-upstream-sync.sh

for f in ITESO*/;
do
  printf "\n\nWorking on Master Sync for Repo: $f \n"
  (cd $f; git checkout master; git branch -D professor-updates; git checkout -b professor-updates; echo "> $f Creating temporal branch: Okay")
  (cd $f; git merge --no-edit professor; git checkout master; echo "> $f Merging professor updates: Okay")
  (
    cd $f;
    branch="$(git symbolic-ref --short -q HEAD)";
    [[ "${branch}" =~ "master" ]] && (
      git checkout professor-updates;
      git push origin professor-updates:master;
      echo "> $f Updated remote master branch from professor-updates: Okay"
    ) || (
      echo "> $f ERROR: Merge conflict detected";
      echo "> Require manual intervention: Resolve conflicts via a manual PR from professor branch to the main master branch.";
      git merge --abort;
      echo "-------- ERROR $f ERROR --------"
    )
  )
  (cd $f; git checkout master; git branch -D professor-updates)
done

