# GeoLite2-Country - Free IP to Country Database

[![npm version](https://img.shields.io/npm/v/geolite2-country.svg)](https://www.npmjs.com/package/geolite2-country)
[![npm downloads](https://img.shields.io/npm/dm/geolite2-country.svg)](https://www.npmjs.com/package/geolite2-country)
[![License](https://img.shields.io/badge/license-CC%20BY--SA%204.0-green)](https://creativecommons.org/licenses/by-sa/4.0/)
[![GitHub Stars](https://img.shields.io/github/stars/wp-statistics/GeoLite2-Country?style=social)](https://github.com/wp-statistics/GeoLite2-Country)

Free MaxMind GeoLite2-Country database for IP geolocation. Lightweight country-level lookup from any IP address. Automatically updated and served via jsDelivr CDN.

**Website:** [geo.wp-statistics.com](https://geo.wp-statistics.com)

---

## Features

- **Country-Level Lookup** - Fast country detection from IP addresses
- **Ultra Lightweight** - Smallest database option (~2 MB)
- **Auto-Updated** - Database updated automatically
- **Fast CDN** - Served via jsDelivr with global edge locations
- **No Authentication** - Direct download, no API keys required
- **Free Forever** - Open source under CC BY-SA 4.0 license

---

## Quick Start

### Direct Download

```
https://cdn.jsdelivr.net/npm/geolite2-country/GeoLite2-Country.mmdb.gz
```

### PHP

```php
use GeoIp2\Database\Reader;

$reader = new Reader('/path/to/GeoLite2-Country.mmdb');
$record = $reader->country('128.101.101.101');

echo $record->country->name;     // 'United States'
echo $record->country->isoCode;  // 'US'
```

### Node.js

```javascript
const { Reader } = require('@maxmind/geoip2-node');

const reader = await Reader.open('./GeoLite2-Country.mmdb');
const response = reader.country('128.101.101.101');

console.log(response.country.names.en);  // 'United States'
console.log(response.country.isoCode);   // 'US'
```

### Python

```python
import geoip2.database

reader = geoip2.database.Reader('./GeoLite2-Country.mmdb')
response = reader.country('128.101.101.101')

print(response.country.name)      # 'United States'
print(response.country.iso_code)  # 'US'
```

### WordPress (WP Statistics)

```php
use WP_Statistics\Service\Geolocation\GeolocationFactory;

$location = GeolocationFactory::getLocation('128.101.101.101');
echo $location['country_code'];  // 'US'
```

---

## Database Info

| Property | Value |
|----------|-------|
| **CDN URL** | `https://cdn.jsdelivr.net/npm/geolite2-country/GeoLite2-Country.mmdb.gz` |
| **npm** | `npm install geolite2-country` |
| **Update Schedule** | Automatic |
| **Size** | ~2 MB (compressed) |
| **Format** | MaxMind DB (MMDB) |
| **License** | [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/) |

---

## Country vs City Database

| Feature | GeoLite2-Country | GeoLite2-City |
|---------|------------------|---------------|
| **File Size** | ~2 MB | ~68 MB |
| **Data** | Country only | Country, city, coordinates |
| **Speed** | Fastest | Fast |
| **Best For** | Geo-blocking, basic analytics | Detailed location needs |

Choose **Country** if you only need country-level data. Choose **City** for detailed location information.

---

## Related Resources

- **Documentation:** [geo.wp-statistics.com](https://geo.wp-statistics.com)
- **City Database:** [GeoLite2-City](https://github.com/wp-statistics/GeoLite2-City)
- **DB-IP Alternative:** [DbIP-City-lite](https://github.com/wp-statistics/DbIP-City-lite)
- **WP Statistics:** [wordpress.org/plugins/wp-statistics](https://wordpress.org/plugins/wp-statistics/)

---

## Attribution

This database is provided by [MaxMind](https://www.maxmind.com/). When using this database, please include appropriate attribution as required by the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/).

---

## License

GeoLite2-Country by MaxMind is licensed under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/).

Maintained by [VeronaLabs](https://veronalabs.com) and the [WP Statistics](https://wp-statistics.com) team.
