export PORT=$(shuf -i 10000-60000 -n 1)

mkdir -p servers
echo "location /$1/ {
	proxy_pass http://127.0.0.1:$PORT/;
}" > /home/pi/lasacs/servers/$1

sudo nginx -s reload

runuser -l $1 -c "cd /home/$1/ && source /bin/lasacs/env/bin/activate && python3 -m flask --app /home/$1/main.py --debug run --port $PORT"
