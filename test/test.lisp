;; Copyright (c) 2024-2026 Parkian Company LLC. All rights reserved.
;; SPDX-License-Identifier: Apache-2.0

(defpackage #:cl-crypto-random.test
  (:use #:cl #:cl-crypto-random)
  (:export #:run-tests))

(in-package #:cl-crypto-random.test)

(defun run-tests ()
  (format t "Executing functional test suite for cl-crypto-random...~%")
  (assert (integerp (simple-sha1-chunk 12345)))
  (assert (constant-time-equal "password" "password"))
  (assert (not (constant-time-equal "pass" "fail")))
  (format t "All functional tests passed!~%")
  t)
