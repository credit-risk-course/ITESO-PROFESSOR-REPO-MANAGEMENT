# ITESO Professor Repo Management Tools

## Usage

### First Usage

To be defined.

### Clone

If you already configured all the repositories, you can clone the resulting structure by executing:

```commandline
$ bash configure-clone.sh {{ITESO-SESSION-NAME}}
```

The output should be similar to the following:

```text
ITESO2022H2CRA-MANAGE
├── ITESO2022H2CRA
│   ├── financetoolbox
│   ├── README.md
│   └── services
├── sync.sh
└── TEAMS
    ├── 20221009-164408-logs.txt
    ├── ITESO2022H2CRA-T141
    ├── ITESO2022H2CRA-T175
    ├── ITESO2022H2CRA-T241
    ├── ITESO2022H2CRA-T752
    ├── ITESO2022H2CRA-T814
    ├── ITESO2022H2CRA-T873
    ├── manage-local-sync.sh
    ├── manage-master-sync.sh
    ├── manage-upstream-sync.sh
    └── sync.sh
```

Use the **sync** script to:
1. Download the latest student changes (master) to your local.
2. Update the professor branch from the upstream remote.
3. Attempt a fast-forward merge between master (students) & the professor changes.

If the 3rth step fails due to a merge-conflict, students can update their repo by doing a pull-request from `professor` to `master` in Github and resolving the conflict manually using the UI.


## ITESO Repos

### [ITESO 2022-H2 CR-B](https://github.com/credit-risk/ITESO2022H2CRB)

* [ITESO2022H2CRB-T688](https://github.com/credit-risk/ITESO2022H2CRB-T688)  
* [ITESO2022H2CRB-T771](https://github.com/credit-risk/ITESO2022H2CRB-T771)  
* [ITESO2022H2CRB-T788](https://github.com/credit-risk/ITESO2022H2CRB-T788)  
* [ITESO2022H2CRB-T818](https://github.com/credit-risk/ITESO2022H2CRB-T818)  
* [ITESO2022H2CRB-T938](https://github.com/credit-risk/ITESO2022H2CRB-T938)  

### [ITESO 2022-H2 CR-A](https://github.com/credit-risk/ITESO2022H2CRA)

* [ITESO2022H2CRA-T752](https://github.com/credit-risk/ITESO2022H2CRA-T752)  
* [ITESO2022H2CRA-T175](https://github.com/credit-risk/ITESO2022H2CRA-T175)  
* [ITESO2022H2CRA-T873](https://github.com/credit-risk/ITESO2022H2CRA-T873)  
* [ITESO2022H2CRA-T241](https://github.com/credit-risk/ITESO2022H2CRA-T241)  
* [ITESO2022H2CRA-T141](https://github.com/credit-risk/ITESO2022H2CRA-T141)  
* [ITESO2022H2CRA-T814](https://github.com/credit-risk/ITESO2022H2CRA-T814)  

