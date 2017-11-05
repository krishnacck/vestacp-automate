echo Please enter your admin panel domain:
read domain
mv /usr/local/vesta/ssl/certificate.crt /usr/local/vesta/ssl/unusablecer.crt
wait
mv /usr/local/vesta/ssl/certificate.key /usr/local/vesta/ssl/unusablecer.key
wait
ln -s /home/admin/conf/web/ssl.$domain.crt /usr/local/vesta/ssl/certificate.crt
ln -s /home/admin/conf/web/ssl.$domain.key /usr/local/vesta/ssl/certificate.key
wait
service vesta restart
echo successfully completed
