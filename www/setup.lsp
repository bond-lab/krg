(in-package :tsdb)

(setf *www-title* :krg)

(setf *www-custom-js* (merge-pathnames "krg.js" *load-truename*))

(setf *www-introduction* (merge-pathnames "krg.html" *load-truename*))

(setf *www-comparisons* nil)

(setf *www-sample* "개가 짖다")

(setf *www-urls*
  '((:parse "http://www.delph-in.net/krg")
    (:generate "http://www.delph-in.net/krg")))
