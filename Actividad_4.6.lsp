(defun cuandoHabloMas(lista)
	(cond 
		((equal (cdr lista) nil) nil)
		((and (consp (car lista)) (= (horarioNormal (car lista)) (horarioReducido (cadr lista)))) 'IGUALES)
		((and (consp (car lista)) (< (horarioNormal (car lista)) (horarioReducido (cadr lista)))) 'REDUCIDO)
		((and (consp (car lista))) 'NORMAL)
	)
)

(defun horarioNormal(lista)
	(cond 
		((endp lista) 0)
		((numberp (car lista)) (+ (car lista) (horarioNormal (cdr lista))))
		(T (horarioNormal (cdr lista)))	
	)
)	


(defun horarioReducido(lista)
	(cond 
		((endp lista) 0)
		((numberp (car lista)) (+ (car lista) (horarioReducido (cdr lista))))
		(T (horarioReducido (cdr lista)))	
	)
)

(defun llamadaMasLarga(lista)
	(cond 
		((endp lista) lista)
		((and (consp (car lista)) (> (maxNormal (car lista)) (maxReducido (cadr lista)))) (cons (maxNormal (car lista)) '(NORMAL)))
		((and (consp (cadr lista))) (cons (maxReducido (cadr lista)) '(REDUCIDO)))
		(T (cdr lista))
	)
)

(defun maxNormal(lista)
	(cond
		((endp lista) 0)
		((numberp (car lista)) (max (car lista) (maxNormal (cdr lista))))
		(T (maxNormal (cdr lista)))
	)
)

(defun maxReducido(lista)
	(cond
		((endp lista) 0)
		((numberp (car lista)) (max (car lista) (maxReducido (cdr lista))))
		(T (maxReducido (cdr lista)))
	)
)