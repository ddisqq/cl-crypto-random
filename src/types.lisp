;; Copyright (c) 2024-2026 Parkian Company LLC. All rights reserved.
;; SPDX-License-Identifier: Apache-2.0

(in-package #:cl-crypto-random)

;;; Core types for cl-crypto-random
(deftype cl-crypto-random-id () '(unsigned-byte 64))
(deftype cl-crypto-random-status () '(member :ready :active :error :shutdown))
