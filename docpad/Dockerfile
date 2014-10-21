# Node

FROM robloach/dev
MAINTAINER Rob Loach <robloach@gmail.com>


# Install DocPad

RUN npm install -g docpad
RUN echo "{\n  subscribed: false\n  subscribeTryAgain: false\n  tos: true\n  identified: true\n}" > ~/.docpad.cson


# Set up the DocPad directory.

VOLUME ["/app"]
WORKDIR /app


# Expose any serviced ports.

EXPOSE 22 9778


# Launch DocPad when the container boots.

CMD ["-"]
ENTRYPOINT ["docpad"]
