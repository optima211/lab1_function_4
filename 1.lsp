(defun f()
  (princ "Vvedite spisok")
  (terpri)
  (setq L (read))
  (princ "Result=")
  (uf L)
)

(defun uf(L)
  (cond 
   (
    (null L) nil)
    (t (cons (car L) (if (cdr L) (list (uf (cdr L)))))
   )
  )
)