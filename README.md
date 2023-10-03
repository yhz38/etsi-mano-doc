Documentation    [![build][build-icon]][build-page]
=============

This repository contain documentation for ETSI MANO servers, such as ubiqube NFV-VNFM webapp, and NFV-NFVO webapp.

[build-icon]: ../../workflows/CI/badge.svg
[build-page]: ../../actions

## ETSI-MANO User Manual

The doc source is written in [asciidoc](http://asciidoc.org/) format

To view the doc formatted you need to clone the git repo and checkout the branch you are interested in.

You can use the [asciidoc browser extension](https://github.com/asciidoctor/asciidoctor-browser-extension) to view the doc rendered in HTML.

Building the doc
----------------

Clone the repository
Checkout the branch you need to use and build the doc with the CLI command below

    docker build -t ubi.docs .

if you have gradle you can also execute

    gradle asciidoctor

The doc is generated in build/docs/


Inspecting the result
---------------------

    docker run --rm ubi.docs tar c build | tar x

    docker run --rm -it ubi.docs

## Authentication

All activable authentication modules.

* [Basic auth](src-doc/)
* [OAuth2](src-doc/auth-oauth2.adoc)
* [TLS](src-doc/auth-cert.adoc)

## Multi tenant

[Multi tenant](src-doc/multi-tenant.adoc)
>>>>>>> 6a07a6c (Add multi tenant documentation)
