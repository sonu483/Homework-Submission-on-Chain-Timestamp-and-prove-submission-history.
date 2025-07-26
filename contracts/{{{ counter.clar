;; Homework Submission Contract – Tracks submission history with timestamp

(define-map submissions principal (tuple (timestamp uint) (uri (buff 256))))

(define-constant err-already-submitted (err u100))
(define-constant err-not-found (err u101))

;; Submit homework once (uri can be IPFS hash or off-chain reference)
(define-public (submit-homework (uri (buff 256)))
  (begin
    (asserts! (is-none (map-get? submissions tx-sender)) err-already-submitted)
    (map-set submissions tx-sender {
      timestamp: block-height,
      uri: uri
    })
    (ok true)
  )
)

;; View submission details (timestamp + uri)
(define-read-only (get-submission (student principal))
  (match (map-get? submissions student)
    submission (ok submission)
    none err-not-found
  )
)
