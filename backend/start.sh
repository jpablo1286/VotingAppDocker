rm -rf VotingAppBackend
git clone https://github.com/jpablo1286/VotingAppBackend.git
/opt/bin/python /opt/app/VotingAppBackend/manage.py makemigrations
/opt/bin/python /opt/app/VotingAppBackend/manage.py migrate

/opt/bin/python /opt/app/VotingAppBackend/manage.py runserver 0.0.0.0:8000
