FROM devopsfaith/krakend:1.4.1

ENV FC_ENABLE=1 
ENV FC_SETTINGS="settings/dev"
ENV FC_PARTIALS="partials/dev"
ADD config /etc/krakend/