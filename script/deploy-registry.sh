# To load the variables in the .env file
source .env

# To deploy and verify our contract
forge script script/DeployRegistry.s.sol:DeployRegistry --rpc-url $GOERLI_RPC_URL --private-key $PRIVATE_KEY  --verify -vvvv
forge script script/DeployRegistry.s.sol:DeployRegistry --rpc-url $GOERLI_RPC_URL --broadcast --verify -vvvv