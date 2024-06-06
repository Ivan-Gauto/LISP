;Ejercicio 4

(defun ej4(lis1 lis2)
	(cond 
		((or (endp lis1) (endp lis2)) nil)
		((or (not (numberp (car lis1))) (not (numberp (car lis2))) (cons (+ (ej4 (cdr lis1) (cdr lis2))))))

	)
)

(defun mayor(L A)
	(cond 
		((endp L) A)
		((> (car L) A) (mayor (cdr L) (car L)))
		(t (mayor (cdr L) A))
	)
)