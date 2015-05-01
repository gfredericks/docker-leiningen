FROM java:8
MAINTAINER gfredericks

ENV LEIN_ROOT true
RUN curl https://github.com/technomancy/leiningen/blob/b630fa37b8b408c16ca86fdc5784e09dc889a612/bin/lein \
-o /usr/local/bin/lein \
&& chmod a+x /usr/local/bin/lein
RUN lein version

CMD ["lein"]