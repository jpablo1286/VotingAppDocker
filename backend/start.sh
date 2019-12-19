rm -rf VotingAppBackend
git clone https://github.com/jpablo1286/VotingAppBackend.git
while ! mysql -u votinguser -ps1mpl3p4ss -h voting-db votingDB -e ";" ; do
       echo "Waiting for DB ..."
       sleep 5
done
/opt/bin/python /opt/app/VotingAppBackend/manage.py makemigrations
/opt/bin/python /opt/app/VotingAppBackend/manage.py migrate

/opt/bin/python /opt/app/VotingAppBackend/manage.py runserver 0.0.0.0:8000
