# To load the variables in the .env file
source .env

# To deploy and verify our contract
# forge script script/DeployRegistry.s.sol:DeployRegistry --rpc-url $GOERLI_RPC_URL --private-key $PRIVATE_KEY  --verify -vvvv
# forge script script/DeployRegistry.s.sol:DeployRegistry --rpc-url $GOERLI_RPC_URL --broadcast --verify -vvvv

forge script script/DeployRegistry.s.sol:DeployRegistry --rpc-url $MUMBAI_RPC_URL --private-key $PRIVATE_KEY  --verify -vvvv
forge script script/DeployRegistry.s.sol:DeployRegistry --rpc-url $MUMBAI_RPC_URL --broadcast --verify -vvvv

forge verify-contract 0xD76f01aF5F73563C103A11AB2f52099833D0252C OperatorFilterRegistry --watch

forge script script/DeployAndConfigureOwnedRegistrant.s.sol:DeployAndConfigureOwnedRegistrant --rpc-url $MUMBAI_RPC_URL --private-key $PRIVATE_KEY  --verify -vvvv

forge create --rpc-url $MUMBAI_RPC_URL src/OwnedRegistrant.sol:OwnedRegistrant --constructor-args "0x044Ae8A69a6d009b7B74a4d85273b4373C0CAaE0" --private-key $PRIVATE_KEY --vvvv --verify