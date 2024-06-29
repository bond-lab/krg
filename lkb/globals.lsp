;;; LinGO grammar specific globals file
;;; parameters only - grammar specific functions 
;;; should go in user-fns.lsp


(defparameter *active-parsing-p* t)

;;; Strings

(defparameter *toptype* '*top*)

(defparameter *string-type* 'string
   "a special type name - any lisp strings are subtypes of it")

;;; Lexical files

(defparameter *orth-path* '(stem))

(defparameter *list-tail* '(rest))

(defparameter *list-head* '(first))

(defparameter *empty-list-type* 'null)

(defparameter *list-type* 'list)

(defparameter *diff-list-type* 'diff-list)

(defparameter *diff-list-list* 'list)

(defparameter *diff-list-last* 'last)

;(defparameter *lex-rule-suffix* "_INFL_RULE"
; "creates the inflectional rule name from the information
;  in irregs.tab - for PAGE compatability")

(defparameter *irregular-forms-only-p* t)

;;;
;;; input characters to be ignored (i.e. suppressed) in tokenization
;;;
(defparameter *punctuation-characters*
  (append
   '(#\space #\! #\" #\& #\(
     #\) #\* #\+ #\, #\. #\/ #\;
     #\< #\= #\> #\? #\@ #\[ #\\ #\] #\^
     #\_ #\` #\{ #\| #\} #\~)
   #+:ics
   '(#\ideographic_full_stop #\fullwidth_question_mark 
     #\horizontal_ellipsis #\fullwidth_full_stop
     #\fullwidth_exclamation_mark #\black_circle
     #\fullwidth_comma #\ideographic_space
     #\katakana_middle_dot #\white_circle)))

(defparameter *display-type-hierarchy-on-load* nil)

;;; Parsing

(defparameter *chart-limit* 100)

(defparameter *maximum-number-of-edges* 4000)

(defparameter *mother-feature* NIL
  "The feature giving the mother in a grammar rule")

(defparameter *start-symbol* '(root)
  "specifing valid parses")

(defparameter *maximal-lex-rule-applications* 7
   "The number of lexical rule applications which may be made
   before it is assumed that some rules are applying circularly")

(defparameter *deleted-daughter-features* 
  '(ARGS HEAD-DTR NON-HEAD-DTR DTR)
  "features pointing to daughters deleted on building a constituent")

;;; Parse tree node labels

;;; the path where the name string is stored
(defparameter *label-path* '(LABEL-NAME))

;;; the path for the meta prefix symbol
(defparameter *prefix-path* '(META-PREFIX))

;;; the path for the meta suffix symbol
(defparameter *suffix-path* '(META-SUFFIX))

;;; the path for the recursive category
(defparameter *recursive-path* '(SYNSEM NON-LOCAL SLASH LIST FIRST))

;;; the path inside the node to be unified with the recursive node
(defparameter *local-path* '(SYNSEM LOCAL))

;;; the path inside the node to be unified with the label node
(defparameter *label-fs-path* '())

(defparameter *label-template-type* 'label)

;;; for the compare function 

(defparameter *discriminant-path* '(synsem local keys key pred))

;;; the lex-rule suffix defaults to _lex_rule, but this might
;;; not be desirable

;(setf *lex-rule-suffix* nil)

;;; Make generation faster 
(setf *gen-packing-p* t)
(setf *gen-filtering-p* t)
(setf *packing-restrictor*  '(RELS HCONS ORTH STEM RULE-NAME))

;;; Blocking Generation (lexicons)
(setf *duplicate-lex-ids*
  '(
    니 이거 저거 그거 뭣가 뭣 그애 그분 그이 딴 사람새끼
    이쁘 에쁘
	오나전
    ))

;;; Blocking Generation (rules)
(setf *gen-ignore-rules*
  '(
	v-decl-robust v-inter-robust v-sug-robust
	subj-head-robust-rs subj-head-robust-sr subj-head-robust-1 subj-head-robust-2
	comp-1st-head-agt-robust-1 comp-1st-head-agt-robust-2
	comp-1st-head-noagt-robust-1 comp-1st-head-noagt-robust-2
	comp-1st-nogcase-robust-1 comp-1st-nogcase-robust-2
	comp-bn-robust-rs comp-bn-robust-sr
	comp-2nd-head-robust-1
    head-mod-rule-adv-rs head-mod-rule-adv-sr
    n2-bottom-1-s n2-bottom-2-s n2-bottom-3-w n2-bottom-3-s n2-bottom-6-w
    v-sub-udef-2_irule v-sub-pur-2_irule v-sub-reason2_irule v-sub-cond2_irule v-sub-conces2_irule v-sub-pur-2_irule
    v-xdel-decl-only-2_irule v-zdel-sub-udef-also2_irule v-zdel-sub-time-also2_irule v-zdel-sub-udef-but2_irule v-zdel-sub-time-but2_irule v-zdel-comp2-but-ci2_irule v-zdel-comp4-but2_irule
    v-ger-ki-acc2_irule 
    v-mod-pst2_irule v-app-mod2_irule
    v-comp-ko4-2_irule v-comp-ko4-3_irule
    v-hon-pst2_irule v-pst2_irule 
    v-retro_irule
    v-decl-infm2_irule v-decl-nun_irule v-decl-nunteyyo_irule v-decl-infm4_irule v-decl-key_irule v-decl-leykoyo_irule v-decl-infm-cyo1_irule v-decl-infm-cyo2_irule v-decl-infm-cyo3_irule v-decl-infm-cyo4_irule v-decl-infm-yaciyo_irule v-decl-infm-nikkayo_irule v-decl-infm-ketunyo_irule v-decl-infm-leyo_irule v-decl-infm-cop-variant_irule v-decl-infm-cop-yo_irule 
    v-decl-unp_irule v-decl-tanta_irule v-decl-tentey_irule v-decl-retro_irule v-decl-retro-hon_irule v-decl-kwunyo_irule
    v-inter-infm2_irule v-inter-infm3_irule v-inter-infm4_irule v-inter-infm5_irule v-inter-layyo_irule v-inter-unp_irule v-inter-tag_irule
    v-hayra-2_irule v-imp-unp_irule v-sug-unp_irule v-exclam-infm2_irule 
    v-zdel-comp2-but-ci2_irule
    n-non-del1_irule n-like-2_irule n-from-2_irule n-pdat1_irule 
    n-person-hon_irule n-hon-robust_irule n-pl-robust_irule n-hon-pl-robust_irule n-pdat4_irule n-pdat5_irule n-pl-dat1_irule n-pl-dat2_irule n-pl-dat4_irule n-pl-phondat2_irule n-hon-pdat1_irule n-hon-pdat2_irule n-hon-pl-dat_irule n-pcom1_irule n-hon-pcom1_irule n-hon-pl-pcom1_irule 
	))


; output all complete generated results
(setf *bypass-equality-check* t)

; prefer results with MRS subsumed by the input
; but if none exist then output all complete generated results
(setf *bypass-equality-check* :filter)



(setf *translate-grid* '(:ko . (:ko)))
