FROM devopsfaith/krakend:1.4.1

ENV FC_ENABLE=1
COPY network-fee/user-fee-krakend-one.json /etc/krakend/krakend.json
