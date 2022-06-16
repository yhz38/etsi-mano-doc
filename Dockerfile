FROM gradle:jdk8-alpine

ADD doc-src/		doc-src
ADD build.gradle	.

RUN	gradle asciidoc_msa_html

USER root
RUN apk add bash

CMD [ "bash" ]
