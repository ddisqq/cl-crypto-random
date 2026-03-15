;; Copyright (c) 2024-2026 Parkian Company LLC. All rights reserved.
;; SPDX-License-Identifier: BSD-3-Clause

;;;; cl-crypto-random.asd
;;;; Cryptographic random bytes
;;;; Copyright (c) 2024-2026 Parkian Company LLC

(asdf:defsystem #:cl-crypto-random
  :description "Cryptographic random byte generation"
  :author "Park Ian Co"
  :license "Apache-2.0"
  :version "0.1.0"
  :serial t
  :components ((:file "package")
               (:module "src"
                :components ((:file "package")
                             (:file "conditions" :depends-on ("package"))
                             (:file "types" :depends-on ("package"))
                             (:file "cl-crypto-random" :depends-on ("package" "conditions" "types")))))))

(asdf:defsystem #:cl-crypto-random/test
  :description "Tests for cl-crypto-random"
  :depends-on (#:cl-crypto-random)
  :serial t
  :components ((:module "test"
                :components ((:file "test-crypto-random"))))
  :perform (asdf:test-op (o c)
             (let ((result (uiop:symbol-call :cl-crypto-random.test :run-tests)))
               (unless result
                 (error "Tests failed")))))
