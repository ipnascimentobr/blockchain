// importando dependencias

const bip32 =  require('bip32');
const bip39 =  require('bip39');
const bitcoin =  require('bitcoinjs-lib');

//definindo a rede rede de teste do bitcoin 
// mainnet rede principal
const network = bitcoin.networks.testnet;

//derivação da carteira 
const path = "m/49'/1'/0'/0/0";

//criando o mnemonico para a seed (palavra chave)
let mnemonic = bip39.generateMnemonic();
const seed = bip39.mnemonicToSeedSync(mnemonic);

//criando a raiz da carteira
let root = bip32.fromSeed(seed, network);

//criando uma conta - par-chave privada e publica keys
let account = root.derivePath(path);

let node = account.derive(0).derive(0);

let btcAddress = bitcoin.payments.p2pkh({ pubkey: node.publicKey, network }).address;

console.log("Carteria criada com sucesso!");
console.log("Endereço da carteira: ", btcAddress);
console.log("Chave privada: ", node.toWIF());
console.log("seed: ", mnemonic);