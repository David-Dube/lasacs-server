useradd $1
cp -r template/home/ /home/$1
chown $1 /home/$1 -R

systemctl start lasacs-flask@$1.service
systemctl enable lasacs-flask@$1.service



