rm -rf GeoLite2-Country.mmdb.gz
wget http://geolite.maxmind.com/download/geoip/database/GeoLite2-Country.mmdb.gz GeoLite2-Country.mmdb.gz
git add .
git commit -m "The database updated!"
git push
