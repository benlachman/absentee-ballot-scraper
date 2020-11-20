# absentee-ballot-scraper

Scrapes absentee ballot requests from county BOE databases.

Mimics a request something like:

```
curl 'https://lookup.boe.ohio.gov/vtrapp/athens/avlookup.aspx' \
  -H 'authority: lookup.boe.ohio.gov' \
  -H 'cache-control: max-age=0' \
  -H 'origin: https://lookup.boe.ohio.gov' \
  -H 'upgrade-insecure-requests: 1' \
  -H 'dnt: 1' \
  -H 'content-type: application/x-www-form-urlencoded' \
  -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36' \
  -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' \
  -H 'sec-fetch-site: same-origin' \
  -H 'sec-fetch-mode: navigate' \
  -H 'sec-fetch-user: ?1' \
  -H 'sec-fetch-dest: document' \
  -H 'referer: https://lookup.boe.ohio.gov/vtrapp/athens/avlookup.aspx' \
  -H 'accept-language: en-US,en;q=0.9' \
  -H 'cookie: _ga=GA1.2.1662054538.1572970731; __cfduid=d1db2dc7146ccac0c64541b5d5540b7fc1604168643; _gid=GA1.2.886396333.1604168645; _gat_gtag_UA_127176238_3=1' \
  --data-raw '__LASTFOCUS=&__EVENTTARGET=&__EVENTARGUMENT=
   &__VIEWSTATE=...
   &__VIEWSTATEGENERATOR=B6786635
   &__EVENTVALIDATION=...
   &cmbelectionlist=20201103G
   &frmLname=<last_name>
   &frmfname=<first_name>
   &btnsubmit=Submit
   &txt_byear=&txt_bmvid=&hid_byear=&hid_bmvid=&hid_app=' \
  --compressed
  ```
  