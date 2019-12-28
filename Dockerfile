# Starting with plain Node image
FROM node:alpine

# Installing Xmysql
RUN npm install -g xmysql

# Exposing the port 80
EXPOSE 80

# Start Command, the flag -a / removes the default api prefix
CMD ["bin/sh", "-c", "xmysql -h $DATABASE_HOST -u $DATABASE_USER -p $DATABASE_PASSWORD -d $DATABASE_NAME -a / -n 80 -r 0.0.0.0" ]
