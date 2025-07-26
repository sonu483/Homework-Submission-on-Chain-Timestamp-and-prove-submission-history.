# Homework Submission on Chain

## 1. Project Title
Decentralized Homework Submission System

## 2. Project Description
A blockchain-based solution that allows students to timestamp and verify homework submissions. Each submission is permanently recorded on-chain with a verifiable timestamp and content hash, creating an immutable audit trail. Students can prove they submitted assignments before deadlines without revealing actual content.

## 3. Project Vision
To create a transparent, tamper-proof academic submission system that:
- Provides verifiable proof of submission times
- Prevents disputes about submission deadlines
- Maintains student privacy through content hashing
- Creates permanent academic records

## 4. Future Scope
1. Deadline enforcement with smart contracts
2. ZK-proofs for content verification without disclosure
3. Integration with learning management systems
4. Plagiarism detection using on-chain hashes
5. Token-based incentive system for timely submissions
6. Multi-school deployment with access control

## 5. Contract Address
`ST1PQHQKV0RJXZFY1DGX8MNSNYVE3VGZJSRTPGZGM.homework-submission`

### Core Functions:
- `(submit-homework (homework-id uint) (submission-hash (buff 32)))`:  
  Submit homework with unique ID and SHA256 hash of content
  
- `(get-submission (student principal) (homework-id uint))`:  
  Retrieve submission timestamp and hash

### Usage Example:
```clarity
;; Submit homework (ID: 42) with SHA256 hash
(submit-homework u42 0x1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef)

;; Check submission
(get-submission 'ST1J4G6RR643BCG8G8SR6M2D9Z9KXT2NJDRK3FBTK u42)<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/9be564cf-a154-4f53-b9ac-a114d877bec0" />
