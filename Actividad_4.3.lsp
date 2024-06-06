(defun ingresarLista()
	(let ((lista ()))
		(print "Ingrese la lista")
		(setq lista (read))
		(if (listp lista)
			(progn 
				(sublistas lista)
			)
		)
	)
)

(defun sublistas(lista)
	(cond 
		((endp lista) lista) 
		((listp (car lista)) (cons (list (car lista) (length (car lista))) (sublistas (cdr lista))))
		(t (sublistas (cdr lista)))
	)
)