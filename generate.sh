#!/bin/bash


rm -rf gfwlist.txt
rm -rf proxy.pac
git add .
#  Use local auto-bypass firewall config(Shadowsocks with port configured on 1080) to fetch gfwlist hosted on Github https://github.com/gfwlist/gfwlist
curl -x SOCKS5://127.0.0.1:1080 https://raw.githubusercontent.com/gfwlist/gfwlist/master/gfwlist.txt -o gfwlist.txt
base64 -D gfwlist.txt > gfwlist
#pushd .. && \ Used for testing subfolder switchy
PYTHONPATH=. python gfwlist2pac/main.py  -i gfwlist -f proxy.pac -p 'SOCKS5 127.0.0.1:1080'  --user-rule user-rule.txt --precise&& 
#popd && \
#cat proxy.pac && \
#cat proxy.pac test_case.js > /tmp/test.js && \
#node /tmp/test.js && \
echo 'Generated Success!'

git add .
git commit -m "Updates"
git push
echo "Deployed Success"
