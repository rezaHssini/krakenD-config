FROM devopsfaith/krakend:1.4.1
ARG BUILD_ENV
ENV FC_ENABLE=1 
ENV FC_SETTINGS="settings"
ENV FC_PARTIALS="partials/$BUILD_ENV"
ADD config /etc/krakend/
RUN krakend check -t -d -c "krakend.json"