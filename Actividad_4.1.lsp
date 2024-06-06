(defun ingresarTemp()
	(let((max_enero ()))
		(print "Ingrese en formato lista las temperaturas de Enero")
		(setq max_enero (read))
		(if (listp max_enero) 
			(progn 
				(tempMenor max_enero)
				(tempProm max_enero)
				(orden max_enero)
				(tempRep max_enero)
			)
			(print "Formato incorrecto")
		)
	)
)

(defun tempMenor(lista)
	(cond 
		((endp lista) 0)
		((not (numberp (car lista))) (tempMenor (cdr lista)))
		((<= (car lista) 38) (+ 1 (tempMenor (cdr lista))))
		(t (tempMenor (cdr lista)))
	)	
)

(defun tempProm(lista)
	(cond 
		((endp lista) 0)
		(t (float (/ (sumarTemp lista) (contDias lista))))
	)
)

(defun sumarTemp(lista) 
	(cond 
		((endp lista) 0)
		((numberp (car lista)) (+ (car lista) (sumarTemp (cdr lista)))) 
		(t (sumarTemp (cdr lista)))
	)
)

(defun contDias(lista)
	(cond 
		((endp lista) 0)
		((numberp (car lista)) (+ (contDias (cdr lista)) 1))
		(t (contDias (cdr lista)))
	)
)

(defun orden(lista) 
	(cond 
		((equal (cdr lista) nil) t)
		((not (numberp (car lista))) (orden (cdr lista)))
		((<= (car lista) (cadr lista)) (orden (cdr lista)))
		(t nil)
	)
)

(defun tempRep(lista) 
	(cond 
		((endp lista) nil)
		((not (numberp (car lista))) (tempRep (cdr lista)))
		((member (car lista) (cdr lista)) (tempRep (cdr lista)))
		(t (cons (car lista) (tempRep (cdr lista))))
	)
)