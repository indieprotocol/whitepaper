## Introduction

Indie Protocol is a community effort to build an Industrial-grade Decentralized Blockchain platform that is capable to process high-performance digital content publishing, provision and licensing operations, that serves the creator economy and empowers financial freedom without holding creators, creations or audiences hostage.

Furthermore, Indie Protocol enables the creation of Decentralized “Blockchain as Organization”’s (BaO’s). It enables a Creative Community to launch its core utility token, and holders can decide the Blockchain’s future direction and governance aspects of Indie Protocol. For sake of clarity and to avoid confusion with other smart contract platforms, Indie Protocol implements its contracts in form of operations. Even though Indie Protocol comes with many different operations implemented, this document focuses on the description of Indie Protocol as a platform, its architecture as well as its governance system using a native core utility token (IND) and an internal token market pegged to the US Dollar (iUSD).

Indie Protocol is a technology that supports the digital generation of content creators, entrepreneurs, investors, and developers, with a common interest in building and participating in a free market for digital content. Consensus technology has the power to do for economics what the internet did for information. It can harness the combined power of all humanity to coordinate the discovery and aggregation of real-time knowledge, previously unobtainable. This knowledge can be used to more effectively coordinate the allocation of resources toward their most productive and valuable use.

### Problems
In the digital content age, the content became portable and easily produced, packaged and published by the creators themselves, without any middle man between the creators and their audience. This innovation gave greater tools for the creator economy, but a lot of powerful middle man saw their business models completely obliterated in just a matter of a few years. This resulted in an insane backfire from those organizations, like in fight for survival mode, that has only created a race to the bottom for all content industries. They used all the tools at their disposal to try to continue relevant, even at the cost of innovation, accessibility and, most importantly, the creators livelihoods.

#### Intellectual Property Battles
*The modern concept of intellectual property was developed in England in the 17th and 18th centuries.* ([1])
And these battles are not new:
*"Literary property" was the term predominantly used in the British legal debates of the 1760s and 1770s over the extent to which authors and publishers of works also had rights deriving from the common law of property.* ([1])

[1]: https://en.wikipedia.org/wiki/Intellectual_property "Intellectual Property wikipedia page"

### Indie Solution
Bitcoin was the first fully autonomous system to utilize distributed consensus technology to create a more efficient and reliable global payment network. The core innovation of Bitcoin is the Blockchain, a cryptographically secured public ledger of all accounts on the Bitcoin network that facilitates the transfer of value from one individual directly to another. For the first time in history, financial transactions over the internet no longer require a middle man to act as a trustworthy, confidential fiduciary.

Indie Protocol looks to extend the innovation of the Blockchain to all digital content creators, that rely upon the internet to publish, distribute and license their works. Whether its music, books, photographs, video or audio podcasts, movies, or many other types of content, a digital public ledger allows for the creation and distribution of incentives to empower the creator economy in ways never before possible. The advent of BaO's ushers in a new paradigm in organizational structure in which Blockchains can run without any human management and under the control of an incorruptible set of business rules. These rules are encoded in publicly auditable open source software distributed across the computers of the community participants, who effortlessly secure the organization from arbitrary control. Indie Protocol does for content what bitcoin did for money by utilizing distributed consensus technology to enable creators BaO's that are inherently global, transparent, trustworthy, efficient and, most importantly redistribute the generated cashflow fairly among all the creators, not just a few.

## Blockchain Architecture

Indie Protocol is a Blockchain Platform built as [open source code](https://github.com/indieprotocol/indie-core), based on the Industrial-grade [Graphene blockchain core](https://github.com/cryptonomex/graphene), that powered leading networks like [BitShares](https://bitshares.github.io/), [Steemit](https://github.com/steemit) or [EOS.io](https://github.com/eosio).

Indie Protocol high-level architecture includes the following components, which are described individually:

### Transactions
When users want to interact with Indie Protocol, they construct so called transactions and transmit them to the network. These represent messages that contain instructions about what operation(s) a user wants to use. A common operation is the simple transfer operation that comes with transfer-specific instructions that provides the necessary information for this action, such as the sender, receiver, the amount to transfer as well as an optional encrypted memo. To allow multiple operations to take place subsequently, multiple operations can be bundled into a single transaction. To identify against the system, transactions are cryptographically signed by the users. These signatures authenticate a user and provide authorization for the operations in the transaction.

### Blockchain
Indie Protocol serves as a journal (e.g. a ledger) of user-signed instructions that become a binding agreement as soon as they are included into a block. After inclusion into a block, the agreements are stored indefinitely by means of a hash-linked-list (the Blockchain). From this ordered sequence of transactions, a current state (think: account balances) can be determined by processing all transactions consecutively starting at the very first block. As we will see later, the software will ensure that instructions that are stored in the Blockchain have been successfully authenticated and validated. For validating and processing of operations, a common set of rules define the consequences of particular actions, which are part of the of the Blockchain protocol.

### Networking
Indie Protocol merely defines a means of storage and can be used in a non-distributed, single-participant fashion as well as in a distributed internet-based mesh network often referred to as Peer-2-Peer (P2P) network. In the latter case, multiple parties are connected with each other in a way that incoming transactions are forwarded to every other connected participant. A transaction ultimately reaches a so called block producer. A block producer verifies incoming transactions against a hard-coded protocol and bundles them into a single block that is added to the existing Blockchain. At this point, a transaction is considered confirmed and executed. The effects of an executed operation on the current state are defined in the Blockchain protocol.

### Consensus
Consensus is the process by which a community comes to a universally recognized, unambiguous agreement on a piece of information. In the context of Blockchains, consensus means agreement about the validity rules for transactions (i.e., the protocol), and the order in which they have been observed by the Blockchain. This ultimately results in an agreement about the state that is build deterministically from the those validity rules and the sequence of transactions. The most commonly known consensus scheme is Proof-of-Work (PoW), that is used by many Blockchains. Most dominant disadvantage is the heavy power consumption and the scalability in terms of transactions per second and confirmation times.

Indie Protocol makes use of a lesser known algorithm called Delegated Proof of Stake (DPoS) that was developed specifically to replace the wasteful ‘mining’ process, increase throughput and reduce reaction times of the Blockchain. It is a tremendous improvement when it comes to consumption of electricity and transaction throughput.

DPoS allows to generate a new block at fixed rate (block production/confirmation time) with minimal computational requirements. This means that the Blockchain can process more transactions in significantly less time and at almost no cost when compared to PoW-based Blockchains. Block production is performed by a set of so called block producers that take turns. After every turn, the order of block producers is randomized in a deterministic manner such that all parties agree on the new order.

### Protocol
The most essential part of Blockchain technologies is here referred to as Blockchain protocol. It defines the behavior of the entire system including consequences and side-effects when processing transactions. Users utilize particular features by crafting a transaction that contains a particular letter-of-interest (also referred to as operation).

Since the Blockchain, as a storage, only stores incremental changes (e.g. transfers), the final balance of each account together with other information needs to be tracked separately in the so called current state. It is important to note that the protocol is deterministic in the sense that the very same state is generated when applying the same sequence of operations (as provided by the Blockchain). This makes Blockchain technologies tamper proof and auditable.

In Indie Protocol, many operations are available, and each of them hooks into the Blockchain protocol at least three times:

- **Validation**: During validation, the raw instructions (sometimes referred to as payload) are checked for consistency. E.g., in case of a transfer, we ensure that the amount to transfer is positive.
- **Evaluation**: In the evaluation step, the operation-specific instruction is validated against the current state of the Blockchain. In case of a transfer, we here ensure that the amount to be transferred is available in the account of the sender.
- **Application**: This step takes action in the sense that it modifies the current state. In the case of a transfer, we here reduce the account balance of the sender and increase the account balance of the receiver according to the amount of tokens transferred.

Example: Transfer operation

Consider a simple transfer operation that sends funds from one account to another. Here, the protocol defines the validation rules such that negative amounts are prevented. The evaluation ensures that the sender cannot transfer more than what is in his account balance. When applying a transfer from Alice to Bob, Alice is credited the transferred amount while Bob receives the amount. Here, transfer refers to the operation type, while the sender, receiver, and amount refers to the operation-specific instructions. Obviously, different operation types come with different instructions.

### Extensibility
The Software behind Indie Protocol is extensively modularized and implements its operations independently of each other. This allows for adding new features once the corresponding code, which implements validation, evaluation and application methods, reaches maturity. In a sense, operations on Indie Protocol are smart-contracts and allow for extending the range of functions of the system. In contrast to other smart-contracting platforms, however, Indie Protocol requires new features to be vetted by the core developers and approved by the IND holders before they can be installed by means of a network-wide protocol upgrade. As a consequence the platform is considered much more solid as new features require to go through multiple stages of quality assurance. These protocol upgrades are well coordinated and already happened successfully many times in the past on DPoS blockchains.

### Performance and Scalability
Indie Protocol is designed from the ground up to process more transactions every second than VISA and MasterCard combined. Indie Protocol can confirm transactions in an average of just 1 second, limited only by the speed of light. High performance Blockchain technology is necessary for cryptocurrencies and smart contract platforms to provide a viable alternative to existing digital media technology platforms. To achieve this industry-leading performance, Indie Protocol was designed to meet the following:

- Keep everything in memory.
- Keep the core business logic in a single thread.
- Keep cryptographic operations (hashes and signatures) out of the core business logic.
- Divide validation into state-dependent and state-independent checks.
- Use an object oriented data model.

By following these simple rules, Indie Protocol is able to process 100,000 transactions per second without any significant effort devoted to optimization. It should be noted that the performance achieved by Indie Protocol is highly dependent upon having a compatible transaction protocol. It would not be possible to achieve the same level of performance in a protocol where the Core Business Logic is run in a virtual machine that performs cryptographic operations and references all objects with hash identifiers. Blockchains are inherently single-threaded, and the performance of a single core of a CPU is the most limited and least scalable resource of all. Indie Protocol is designed to get the most out of this single thread of execution.

### Identity
Indie Protocol makes use of human-readable account names that have to be registered together with public-keys in the Blockchain prior to its usage. Thus, the Blockchain acts as a name-to-public-key resolver similar to the traditional domain name service (DNS). These named accounts enable users to easily remember and communicate their account information instead of using error-prone cryptographic addresses. Another benefit of having human-readable names is that creators can register their verified creator name, with proper validation by the committee, and become publicly verifiable *provenance* for the creations published in Indie Protocol.

### Permissions
Indie Protocol designs permissions around accounts, rather than around cryptography, making it easier to use. Every account can be controlled by weighted combination of other accounts and/or keys. This creates a hierarchical structure that reflects how permissions are organized in real life, and makes multi-user control over funds easier for users. Hence, Indie Protocol does technically not have multi-signature accounts, but has multi-account permissions. That said, each public/private key pair is assigned a weight, and a threshold is defined for the authority. In order for a transaction to be valid, enough entities must sign so that the sum of their weights meets or exceeds the threshold.

### Authorities
Indie Protocol employs a state-of-the-art hierarchical private key system to facilitate regular keys and backup keys. Regular (basic) keys are publishing and performing non-financial operations, financial (active) keys are for performing financial operations, while a separate backup (owner) key can be used to recover access to an account in case of loss of the basic or active keys. Ideally the owner keys are meant to be stored offline, and only used when the account’s keys need to be changed or to recover a lost key. Most software that supports Indie Protocol also encapsulates these key management functions in a way that the user experience is not even aware of the inner complexity involved.

### Working Budget
The difference between max supply and circulating supply is called the Working Budget and has often in the past been referred to as the reserves.

Indie Protocol has a daily budget to use for development. This budget has an upper limit of funds that can be used from the working budget every day.

From this daily budget, payments for block production as well as project funding are made. Of course, the IND holders have the choice and need to approve IND tokens leaving the working budget.

### Fees
Similar to most other Blockchains, interacting with Indie Protocol comes with a fee for using its features (i.e. operations). Each operation comes with its own fee. Additional to block production and project funding which can drain tokens from the working budget, there are transaction fees paid by users of Indie Protocol that go back into the working budget. 

As a consequence, the total amount of IND in the working budget as well as the total in- and out-flow highly varies over time. However, if compared to most proof-of-work-based Blockchains that constantly reward a (more or less) fixed amount of tokens to miners, Indie Protocol has a chance to have the working budget grow and consequently the circulating supply shrink. This is the case if the total transactions fees outweigh the tokens used for block production and project funding.

While, the IND holders have choices to either increase or decrease the funds used for block production and project funding, the committee has the choice to adapt the transaction fees by means of updating the fee schedule. In contrast to other Blockchains, Indie Protocol comes with fixed fees instead of a fee market. The fee schedule defines which feature of the Blockchain requires which amount of transaction fee for using it.

### Referral Program
Indie Protocol has an integrated one-level referral system. Basically, everyone interacting on Indie Protocol needs to deduct a small transaction fee. From that fee (currently) 50% go into the Working Budget (for future funding of development etc.) and the other 50% go into the referral program from where, the registrar (frontend who paid the registration fee and enabled the user registration) as well as the referrer (who invited the user to register) receive a 25% reward each.

### Verified Creator
Any account in Indie Protocol is considered a creator, as the protocol doesn't require an account for the users to access the content (the audience will be users in any frontend app, not on the protocol itself as they will not be publishing content). Although, any frontend users can opt-in to register if the frontend enables that function, and then they can publish content.

A creator can request the committee to become a Verified Creator. The requisites for the application are defined specifically for each network, but generically the creator would have to have a minimum amount staked in the protocol, pay the application fee and be verified by the committee as the real creator and not a copy cat. When an account is upgraded to a so called Verified Creator status, their human readable name can be changed to match the real creator name, and it no longer generates registrar and referrer rewards (although they receive the upgrade fee reward still) and the verified creator starts to receive a 50% refund on all fees.

### Content Distributors
There is a special kind of account in the protocol, which is the distributor account. It has a similar application process as the verified creators, and in a way it is similar to the block producer accounts, as it will have a separate signing key to push content statistics feeds to the protocol. Any content published by these accounts will not receive the statistics fed by the same account, as that would be a clear conflict of interest, and distributor status can be revoked if the committee verifies that they are colluding with any account for profit extraction.

A distributors market determines the ones that are active at each point in time. Each distributor is evaluated for each content category that they are submitting feeds for, and with these transactions they can send any amount of fees - imagine this like a paid subscription for the content they are using from the protocol. Their position in the rank is calculated by their stake and by the fees they have sent to the working budget with these weights: 25% stake median of current period, 25% total fees paid, 50% fees paid the current period.

The committee determines the number of active distributors at any point in time, so that a competition is created to be at the highest ranks. The distributor ranking is always public and serves as a public display of the distributors contributions to the creators in the protocol. The distributors that become inactive by falling out of the top tier will not be able to access content from the protocol, and their status can be revoked if the committee verifies that they are subverting the protocol rules of content access.

## Governance
On Indie Protocol, decisions are made by the holders of IND core native token weighted by the amount of IND staked. In order to improve voting participation and simplify the life of IND holders, voters can either vote directly or delegate voting power to so called proxies. This is similar to a representative democracy, where selected persons decide the course of action. Those leaders have to account for their actions and can be unelected by the core token holders. Unwanted actions includes censoring, favoring, or simply failure to produce blocks in a timely manner. However, the difference to a democracy is that voters in the community have their vote weighted by the amount of IND that they stake in their account.

At any time, voters have to decide on the following aspects of Indie Protocol:

### Committee
The Committee comprises a board of members that have control over a few Blockchain parameters such as block size, block time, witness reward, and over 30 others. They are also in charge of the approval of account verifications (Verified Creator and Content Distributor). Additionally, the committee can change the fee schedule which defines the minimum fee for each operation offered by the system. Voters can cast a vote for how many members the committee should constitute as well as vote for a particular set of members.

Being an active member of the committee comes at a cost for executing all administrative and managerial tasks. Indie Protocol acknowledges this fact by rewarding committee members in core IND tokens per produced block. Depending on the valuation of IND, the committee can modify the amount of IND rewarded per block. As a start, each block is rewarded with 1 IND. Those IND are taken from the working budget. Should the committee member be required to produce extra work for the blockchain, besides regular approvals of accounts or parameter changes, then they are encouraged to submit a worker proposal to the network to be approved and paid by the working budget as any worker.

### Block Production
Block production in Indie Protocol is arranged through DPoS, which requires block producers to register themselves and campaign for sufficient votes from IND holders, before they can start producing blocks on the Blockchain, and consequently get rewarded per produced block. Given the governance system and quick re-tallying of votes, a misbehaving block producer can be dismissed within hours. Next to the actual selection of block producers, the voters also have a say over how many block producers should exist.

Block production comes at a cost for running and maintaining equipment. Indie Protocol acknowledges this fact by rewarding block producers in core IND tokens per produced block. Depending on the valuation of IND, the committee can modify the amount of IND rewarded per block. As a start, each block is rewarded with 10 IND. Those IND are taken from the working budget.

### Workers
Last but not least, the voters have control over who receives funding from the Working Budget of the Blockchain. A worker applies for project funding and needs to campaign for sufficient votes before being rewarded. Similar to block producers and committee members, the rigorous voting system allows almost immediate removal by IND holders and proxies.

A certain amount of the daily available tokens can be allocated to make development possible by means of workers for project funding. Anyone can set up a worker on Indie Protocol and ask for a daily allowance in IND. If the IND holders approve a particular worker, the IND tokens are transferred from the daily budget. A limit defines the maximum amount of the daily budget that is given to all approved workers. Consequently, those workers that have received more votes from IND holders will receive their funds first. This means that workers, even if approved, may not be funded if the aforementioned threshold is hit. Furthermore, workers constantly stand under the scrutiny of the IND holders who can disapprove (e.g. fire) workers that do not deliver.

## Core Tokens
The native utility core token of Indie Protocol is IND (symbol is supposed to change for each network launched), it serves as a utility token and is offering governance properties to its holders. Governance describes the process of governing the Blockchains many variable aspects, in a way it can adapt to future changes more easily.

Internally there is another token called iUSD, that is pegged to the US Dollar. This token corresponds to an IND baked note, that can be redeemed for 1 USD of IND at any point in time. The committee is the issuer of this token and it will be created for paying the rewards and licensing fees for creators.

### Supply
In this section, we would like to discuss the actual supply of the core IND token in more detail. Firstly, we define the max supply as that supply that can at most be in circulation, similar to how there will only ever be up to 21 million BTC on Bitcoin Blockchain. Furthermore, the circulating supply represents that amount that currently is liquid, in circulation and held by participants on the Blockchain. Obviously, the circulating supply will always be smaller than or equal to the max supply - staked supply - working budget. For voting only the staked supply applies.

### Initial Allocation
Indie Protocol was built without any ICO, token sale or any capital raise, just the time and effort of the core developers and community members on GitHub. It was based on code developed by [Graphene](https://github.com/cryptonomex/graphene) and given to the world for anyone to use under the MIT license.

Indie Protocol communities will make their own decisions related to the initial allocation of their core token when they launch their network. They will initiate their network when they decide that the core functionality reached a ready state, and that they have the backing of the infrastructure providers for block producing.

In the genesis block of Indie Protocol the max supply - circulating supply of the core token, should be allocated to the Working Budget. This Working Budget is the life blood for the protocol to function.

A max supply of IND has been put in place on the Blockchain. This can never change. The supply is set aside for future project funding and rewarding block producers, and is only accessible with approval by the IND holders through the worker system. This so called Working Budget is also often referred to as reserves or treasury. It is worth noting that revenues made from transactions fees are not shared with holders nor stakers of IND, but instead go back into the working budget, to pay for recurring network costs, reward the creators, and to allow future development. There is no reward for holding the core IND token in any way.

## Legal Disclaimer
Indie Protocol is the code-base for many Blockchain Networks to be launched and ran by a network of voted block producer nodes (Blockchain nodes) around the world, similar to other DPoS blockchains as an infrastructure. Indie Protocol is not a company, a trademark nor a brand, Indie Protocol doesn't have any legal responsibilities as a platform nor as code; users of Indie Protocol might have responsibilities or legal obligations for using it toward their legal jurisdiction depending on their usage and the means behind it.

Our code is released as is, with a MIT license. It's up to the users of our open source code to decide what to do with it. Any Blockchain Network launched using Indie Protocol's code will be launched by their own community, and completely independent from Indie Protocol's core team, as we don't operate any client interfaces, provide any services, provide any channels, internet domains, block producer nodes or API nodes.

The core utility token of any Indie Protocol based network is used as utility for Blockchain operations fees and as power to participate in assigning active committee Blockchain users, assigning active witness nodes of Blockchain users and vote to issue utility token for development workers which are submitted by Blockchain users.
