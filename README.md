1.Install python and pip
2.yum group install "Development Tools"
3.yum install python3-devel
4.yum install postgresql-devel
5.pip3 install psycopg2-binary


Adhoc commands:
ansible all -m ping -i dockerhosts - ping server
ansible ubuntu-remote -b -m apt -a "name=vim,state=absent" -i dockerhosts --check
ansible ubuntu-remote -b -m command -a "apt-get update" -i dockerhosts


Playbook command

Start at task command
ansible-playbook docker-container.yml -i hosts --start-at-task="Vim"

Run particular task using tag
ansible-playbook docker-container.yml -i dockerhosts --tags dependencies