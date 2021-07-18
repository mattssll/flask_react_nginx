# 1) mkdir /etc/systemd/system
# 2) add this to the file
[Unit]
Description=A simple Flask API
After=network.target

[Service]
User=ubuntu
WorkingDirectory=/home/ubuntu/react-flask-app/api
ExecStart=/home/ubuntu/react-flask-app/api/venv/bin/gunicorn -b 127.0.0.1:5000 api:app
Restart=always

[Install]
WantedBy=multi-user.target