# Gerador de Carteira Bitcoin

Este projeto é um gerador de carteira Bitcoin que utiliza as bibliotecas `bip32`, `bip39` e `bitcoinjs-lib` para criar uma carteira HD (Hierarchical Deterministic Wallet) e exibir o endereço da carteira, a chave privada e a seed mnemônica.

## Carteira Testnet

As carteiras Testnet operam em uma rede separada da blockchain do Bitcoin e são usadas apenas para fins de teste. As carteiras Testnet permitem que desenvolvedores ou testadores experimentem sem ter que arriscar bitcoins reais.

Os fundos em uma carteira Testnet não têm nenhum valor real, e o bitcoin Testnet nessas carteiras não pode ser "ativado" ou "convertido" em bitcoin da mainnet. Se você tentar enviar bitcoin Testnet para uma carteira bitcoin, receberá o erro "endereço inválido".

### Verificação de Endereço em Redes Testnet

Mesmo utilizando redes Testnet, é possível receber uma mensagem de "endereço inválido". Se isso acontecer, verifique cuidadosamente o prefixo do endereço da sua carteira.


## Devolução dos Faucets

### Devolução dos Faucets

As Faucets fornecem moedas para testes. Após utilizar os recursos em seus projetos de desenvolvimento, é fundamental devolver os Faucets à sua origem. Isso garante que outros programadores também possam beneficiar-se dos mesmos recursos que você utilizou. Se não realizar essa devolução, a origem pode ficar sem moedas disponíveis para auxiliar você e outros usuários no futuro.


## Instalação

Para utilizar este gerador de carteira, você precisa ter o Node.js instalado. Em seguida, execute o seguinte comando para instalar as dependências:

```bash
npm install bip32 bip39 bitcoinjs-lib
```

## Por que estou recebendo um erro de "endereço inválido"?

O erro "endereço inválido" ocorre quando o endereço para o qual você tenta enviar não corresponde à rede da sua carteira . Por exemplo, se você estiver usando uma carteira Testnet e tentar enviar para uma carteira Bitcoin, ou se você tentar enviar para um blockchain diferente.


## Prefixos de Endereços

Para resolver esse erro, certifique-se de inserir um endereço que corresponda à rede da sua carteira.

- Carteiras de Bitcoin podem enviar para endereços com o prefixo 1 , 3 ou bc1 .

- As carteiras Testnet podem enviar para endereços com o prefixo m , 2 ou tb1 .


## Links

https://blockstream.com/

https://help.blockstream.com/hc/en-us/sections/900000260163-Troubleshooting-Green



## Ferramentas Testnet

 - Gerador de carteiras:  https://bitcoin-tools-blond.vercel.app/
 - Validador de carteira: https://bitcoin-tools-blond.vercel.app/validate



 ## Lista de Testnet Faucet 
 ### Bitcoin
 |Name|URL|
 |----|---|
 |Bitcoin Testnet|  https://bitcoinfaucet.uo1.net/ |
 |Bitcoin testnet3|   https://coinfaucet.eu/en/btc-testnet/ |



 Ethereum goerli testnet faucet
https://faucet.goerli.mudit.blog/
https://goerlifaucet.com/
https://goerli-faucet.slock.it/
https://faucets.chain.link/goerli
https://faucet.polygon.technology/
https://app.mycrypto.com/faucet
https://t.me/bitsznbot

Ethereum kovan testnet faucet
https://faucets.chain.link/kovan
https://t.me/bitsznbot
https://app.mycrypto.com/faucet
https://gitter.im/kovan-testnet/faucet#

Ethereum ropsten testnet faucet
https://faucet.dimensions.network/
https://faucet.egorfine.com/
https://t.me/bitsznbot
https://app.mycrypto.com/faucet

Ethereum rinkeby testnet faucet
https://rinkebyfaucet.com/
https://faucet.rinkeby.io/
https://faucets.chain.link/rinkeby
https://app.mycrypto.com/faucet
https://t.me/bitsznbot

Polygon mainnet faucet
https://www.gimlu.com/faucet

Polygon mumbai testnet faucet
https://mumbaifaucet.com/
https://testmatic.vercel.app/
https://faucet.polygon.technology/
https://faucet.dsolutions.mn/
https://t.me/bitsznbot

Binance smart chain testnet faucet
https://testnet.binance.org/faucet-smart

Avalanche fuji testnet faucet
https://faucet.avax-test.network/

Solana Devnet and testnet faucet
https://solfaucet.com/

Aurora testnet faucet
https://aurora.dev/faucet

Bitcoin testnet faucet
https://tbtc.bitaps.com/
https://testnet-faucet.mempool.co/
https://bitcoinfaucet.uo1.net/
https://kuttler.eu/en/bitcoin/btc/faucet/
https://coinfaucet.eu/en/btc-testnet/

Bitcoin cash testnet faucet
https://tbch.googol.cash/

Litecoin testnet faucet
https://testnet-faucet.com/ltc-testnet/

Dogecoin testnet faucet
https://testnet-faucet.com/doge-testnet/

Tron testnet faucet
https://nileex.io/join/getJoinPage

Ripple testnet and devnet faucet
https://xrpl.org/xrp-testnet-faucet.html

Near testnet faucet
https://wallet.testnet.near.org/

Starknet testnet faucet
https://www.starkswap.co/app/faucet

Starknet goerli testnet faucet
https://faucet.goerli.starknet.io/

Cardano devnet and testnet faucet
https://testnets.cardano.org/en/testnets/cardano/tools/faucet/

Fantom opera testnet faucet
https://faucet.fantom.network/

Algorand testnet faucet
https://bank.testnet.algorand.network/
https://dispenser.testnet.aws.algodev.network/
https://testnet.algoexplorer.io/dispenser

Harmony one testnet faucet
https://faucet.pops.one/

Moonbeam testnet faucet
https://rpc.testnet.moonbeam.network/

Cronos testnet faucet
https://cronos.org/faucet

Celo alfajores testnet faucet
https://celo.org/developers/faucet

Shiden community faucet
https://www.as-faucet.xyz/shiden#

Erlond devnet and testnet faucet
https://r3d4.fr/faucet

Kyve testnet faucet
https://app.kyve.network/#/faucet

ETH 2.0 kiln testnet-beta faucet
https://kilnfaucet.com/

Evmos testnet faucet
https://faucet.evmos.dev/

Comdex devnet and testnet faucet
https://faucet.comdex.one/

Multiple chain faucet from paradigm
https://faucet.paradigm.xyz/


## Testnet Explorer
|Name|URL|
 |----|---|
 |Bitcoin Testnet Explorer| https://live.blockcypher.com/btc-testnet/ |
 |mempool| https://mempool.space/ |



 ## Bitcoin Charts Exchange Rate Data

 https://data.nasdaq.com/data/BCHARTS-bitcoin-charts-exchange-rate-data/documentation

