(defpackage main
    (:use :cl :postmodern :cl-json))
(in-package :main)

(connect-toplevel "test" "postgres" "123456" "127.0.0.1")

(defclass p-user ()
  ((id :initarg :id :accessor p-user-id :col-type integer)
   (name :initarg :name :accessor p-user-name :col-type string)
   (gender :initarg :gender :accessor p-user-gender :col-type integer)
   (create-at :initarg :create-at :accessor p-user-create-at :col-type simple-date)
   (update-at :initarg :update-at :accessor p-user-update-at :col-type simple-date))
  (:metaclass dao-class)
  (:keys id))

;; (defvar p2 (make-instance 'p-user
;;              :name "bbbbb"
;;              :gender 1
;;              :create-at "2018-13-12 00:00:00"
;;              :update-at "2018-13-12 00:00:00"))
;; (insert-dao p2)


(let ((ins (get-dao 'p-user 1)))
  (print ins))

(princ
 (json:encode-json-to-string
  (first (select-dao 'p-user (:= 'name "aaa")))))

;; (disconnect-toplevel))
