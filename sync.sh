input_filename=${1}

# Frequently used paths
lecture_manage_path="${input_filename}-MANAGE"
lecture_teams_path="${lecture_manage_path}/TEAMS"

(cd $lecture_manage_path; bash sync.sh)

