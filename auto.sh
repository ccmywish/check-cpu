rm ./wc.tar.gz
tar  -czf ./wc.tar.gz ./ 
rsync -avz -e "ssh -i ~/Downloads/aoran" ./wc.tar.gz ubuntu@139.155.26.88:/home/ubuntu/myapp
#sudo mv /home/ubuntu/myapp/wc.tar.gz /var/www/html