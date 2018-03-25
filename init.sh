sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo ln -sf /home/box/web/etc/gunicorn.py /etc/gunicorn.d/gunicorn
sudo /etc/init.d/gunicorn restart
gunicorn -b 0.0.0.0:8080 hello:hello_func &
