FROM devopsfaith/krakend:1.4.1
ARG BUILD_ENV
ENV FC_SETTINGS="settings/$BUILD_ENV"
ENV FC_PARTIALS="partials/$BUILD_ENV"
ADD config /etc/krakend/
RUN krakend check -t -d -c "krakend.json"