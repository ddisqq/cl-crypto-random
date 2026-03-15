;; Copyright (c) 2024-2026 Parkian Company LLC. All rights reserved.
;; SPDX-License-Identifier: Apache-2.0

(in-package #:cl-crypto-random)

(define-condition cl-crypto-random-error (error)
  ((message :initarg :message :reader cl-crypto-random-error-message))
  (:report (lambda (condition stream)
             (format stream "cl-crypto-random error: ~A" (cl-crypto-random-error-message condition)))))
