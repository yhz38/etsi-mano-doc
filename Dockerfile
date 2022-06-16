FROM gradle:jdk8-alpine

ADD docs/		docs
ADD build.gradle	.

RUN	gradle asciidoc_msa_html

USER root
RUN apk add bash

CMD [ "bash" ]
