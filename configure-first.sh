input_filename=${1}

# Frequently used paths
lecture_manage_path="${input_filename}-MANAGE"
lecture_teams_path="${lecture_manage_path}/TEAMS"

mkdir "${lecture_manage_path}"
echo "> Created the lecture manage directory: ${lecture_manage_path}"

# Copy scripts from template
cp -r template/. ${lecture_manage_path}
echo "> Copy over content from template: Done"

# Clone base repository
(cd $lecture_manage_path; git clone git@github.com:rhdzmota/${input_filename}.git)

# Create gitignore
echo '*' > ${lecture_manage_path}/.gitignore

# Clone team repositories
while read line; do
  repo_name="${input_filename}-${line}"
  repo_path="${lecture_teams_path}/${repo_name}"
  (cd $lecture_teams_path; git clone git@github.com:credit-risk/${repo_name}.git)
  (cd $repo_path; git remote add upstream git@github.com:credit-risk/${input_filename}.git; git fetch --all)
  # Uncomment the following line for first configuration; this might need some minor tweaking.
  # (cd $repo_path; git checkout -b professor upstream/master; git pull --rebase upstream master)
  echo "${line}: Done"

done < ${input_filename}

(cd $lecture_teams_path; bash sync.sh)

