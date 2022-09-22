const ethers = require("ethers")
const utils = ethers.utils

const address = utils.getAddress("be862ad9abfe6f22bcb087716c7d89a26051f74c")
const prefix = 3
let salt = 0
let max = 2 ** 64

while(salt < max){
    hash = utils.keccak256(utils.solidityPack(["uint32","address","uint64"],[prefix,address,salt]))

    if (hash.substring(62,66).toLowerCase() == "d073" && parseInt(hash.substring(2,6),16) == 875){
        console.log("salt,hash",salt,hash,utils.solidityPack(["uint32","uint64"],[prefix,salt]))
        break
    }
    salt++
}