## Problem 
Creator royalties standard ERC2981 is not enforceable by NFT contracts. Some marketplaces do not enforce creator royalties in order to reduce seller fees and attract market activity. 

One way to enforce royalties is for NFT contracts to block transfers to and from a mutable blocklist of addresses. This repo is an experiment in creating enforceable royalties.


## Specification
- A community-owned RoyaltiesEnforcementRegistry contains the addresses of marketplace that DO NOT enforce royalties
- NFT contract deployers include a modifier on transfer functions that checks if sender/recipient are on blocklist
- NFT contract owner can override RoyaltiesEnforcementRegistry to allow or disallow transfers to/from any (marketplace) address
