# Start from the latest version of lgo Docker image.
#
# Notes:
# Don't use yunabe/lgo:latest tag because mybinder.org
# can not detect the update of yunabe/lgo:latest.
# Please check out the latest date tag from
# https://hub.docker.com/r/yunabe/lgo/tags
FROM yunabe/lgo:20190218

# Change this line to invalidate the cache on mybinder.org.
RUN echo cache-busting-0

# Install your library
RUN go get -u -d github.com/yunabe/easycsv && lgo installpkg github.com/yunabe/easycsv

# Change the working directory
WORKDIR $GOPATH/src/github.com/yunabe/easycsv
