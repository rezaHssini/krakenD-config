FROM devopsfaith/krakend:1.4.1
ARG BUILD_ENV
ARG BASE_AUTH_USERNAME
ARG BASE_AUTH_PASSWORD
ENV FC_ENABLE=1 
ENV FC_SETTINGS="settings/$BUILD_ENV"
ENV FC_PARTIALS="partials/$BUILD_ENV"
ADD config /etc/krakend/
RUN htpasswd -Bbc /etc/krakend/.htpasswd $BASE_AUTH_USERNAME $BASE_AUTH_PASSWORD
RUN krakend check -t -d -c "krakend.json"