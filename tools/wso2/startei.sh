# Integrator - https://localhost:9443/carbon
# For analytics dashboard: https://localhost:9643/portal
# For business process: https://localhost:9445/carbon
# For broker: https://localhost:9446/carbon

docker run -it \
-p 8280:8280 \
-p 8243:8243 \
-p 9443:9443 \
wso2/wso2ei-integrator # latest
   