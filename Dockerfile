FROM ethereum/solc:stable AS solc

FROM ethereum/client-go:alltools-stable 
COPY --from=solc /usr/bin/solc /usr/bin/
