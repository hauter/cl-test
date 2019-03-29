(defpackage server
  (:use :cl :ningle))

(in-package :server)


(defvar *app* (make-instance 'ningle:<app>))

(setf (ningle:route *app* "/")
      "hello")

(setf (ningle:route *app* "/hello/:name")
      #'(lambda (params)
          (format nil "~A" params))

(clack:clackup *app*)
;; (clack:stop *app*)
