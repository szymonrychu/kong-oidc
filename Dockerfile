FROM kong:2

USER root

RUN set -xe;\
    luarocks install https://raw.githubusercontent.com/zmartzone/lua-resty-openidc/4ff64540ece124a64f66c5f5c5ed6b2dd8a58483/lua-resty-openidc-1.7.2-1.rockspec;\
    luarocks install kong-oidc

USER kong
