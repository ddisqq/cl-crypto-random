;; Copyright (c) 2024-2026 Parkian Company LLC. All rights reserved.
;; SPDX-License-Identifier: Apache-2.0

;;;; package.lisp
;;;; Package definition for cl-crypto-random
;;;; Copyright (c) 2024-2026 Parkian Company LLC

(defpackage #:cl-crypto-random
  (:use #:cl)
  (:export
   #:simple-sha1-chunk
   #:constant-time-equal
   #:adler-32
   #:xor-encrypt
   #:pkcs7-pad
   #:verify-signature-mock
#:with-crypto-random-timing
   #:crypto-random-batch-process
   #:crypto-random-health-check;; Random generation
   #:crypto-random-bytes
   #:crypto-random-integer
   #:generate-key
   #:generate-nonce))
