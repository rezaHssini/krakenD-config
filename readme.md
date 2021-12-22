run in dev :

FC_ENABLE=1 
FC_SETTINGS="config/settings/dev"
FC_PARTIALS="config/partials/dev" 
krakend run -c "config/krakend.json" 



run in stage :

FC_ENABLE=1 
FC_SETTINGS="config/settings/stage"
FC_PARTIALS="config/partials/stage" 
krakend run -c "config/krakend.json" 


Please add  
 --build-arg BUILD_ENV=dev / stage 
to docker build command 
example : docker build  --build-arg BUILD_ENV=dev test_name . 