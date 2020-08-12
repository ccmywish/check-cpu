rm ./check-cpu.tar.gz
tar  -czf ./check-cpu.tar.gz ./
rsync -avz -e "ssh -i ~/Downloads/aoran" ./check-cpu.tar.gz ubuntu@139.155.26.88:/home/ubuntu/myapp
#sudo mv /home/ubuntu/myapp/check-cpu.tar.gz /var/www/html
