apt-get -qqy update
apt-get -qqy install postgresql python-psycopg2
apt-get -qqy install python-pip
su postgres -c 'createuser -dRS vagrant'
su vagrant -c 'createdb'
su vagrant -c 'createdb tournament'
su vagrant -c 'psql tournament -f /vagrant/tournament.sql'
su vagrant -c 'python vagrant/tournament/tournament_test.py'

vagrantTip="[35m[1mThe shared directory is located at /vagrant\nTo access your shared files: cd /vagrant(B[m"
echo -e $vagrantTip > /etc/motd

