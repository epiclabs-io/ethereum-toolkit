This simple Dockerfile combines ethereum's all tools with the Solidity compiler so that abigen works

To generate ABI out of a solidity file, use the following command

```bash
cat yourfile.sol | docker run -i --rm epiclabs/ethereum-toolkit /bin/sh -c 'cat > code.sol && abigen --pkg main --sol code.sol'

```

or

```bash
docker run --rm -v $PWD/yourfile.sol:/code.sol epiclabs/ethereum-toolkit abigen --pkg main --sol /code.sol
```


