# Publisher - https://localhost:9443/publisher
# Store - https://localhost:9443/devportal
# Admin console - https://localhost:9443/admin
# Carbon console - https://localhost:9443/carbon

docker run -it \
   -p 9443:9443 \
   -p 8243:8243 \
   -p 8280:8280 \
   docker.wso2.com/wso2am:4.0.0.4-alpine # latest
   