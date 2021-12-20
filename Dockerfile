FROM devopsfaith/krakend:1.4.1

ENV FC_ENABLE=1 
ENV FC_SETTINGS="settings/dev"
ENV FC_PARTIALS="partials/dev"
ENV FC_OUT="/etc/krakend/out.json"
ADD config /etc/krakend/