# docker build --rm=false -t idangozlan/rendertron .
# This Docker image will install and run latest rendertron
FROM node:lts-alpine

# Installs latest Chromium (85) package.
RUN apk add --no-cache \
      chromium \
      nss \
      nodejs

# We let puppeteer skip chromium download, since Alpine built a little bit different than other dists
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true \
    PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser

# Creating working directory for our run.sh file (which runs the rendertron update + launch)
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY run.sh /usr/src/app

# Adding current latest of rendertron to save some time when docker start running (installation + run)
# unsafe flag is for permission fixing
RUN npm i -g rendertron --unsafe

EXPOSE 3000

CMD /usr/src/app/run.sh
