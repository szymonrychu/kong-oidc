FROM kong:2

USER root

RUN set -xe;\
    luarocks install lua-resty-openidc;\
    luarocks install kong-oidc

USER kong