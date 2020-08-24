FROM nginx

ADD . /tmp

RUN find /tmp -type f -name "*.puml" -exec sh -c "cp {} /usr/share/nginx/html/" \; && rm -fr /tmp && find /usr/share/nginx/html/ -type f -name "*.puml" -exec sh -c "sed -i 's~https://raw.githubusercontent.com/blademainer/plantuml-style-c4/master/~./~g' {}" \;

