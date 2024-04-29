(defun ingresarDatos()
	(let ((max_enero ()) (max_febrero ()) (tempMaxAyer 0)) 
		(print "Ingrese las maximas temperaturas de todos los dias de Enero")
		(setq max_enero (read))
		(print "Ingrese las maximas temperaturas de todos los dias de febrero")
		(setq max_febrero (read))
		(print "Ingrese la temperatura maxima de ayer")
		(setq tempMaxAyer (read))
		(if (and (listp max_febrero) (listp max_enero) (numberp tempMaxAyer)) 
			(tempMaxima max_enero max_febrero tempMaxAyer)
			(print "Algunos de los datos es incorrecto")
		)
	)
)	

(defun tempMaxima(max_enero max_febrero tempMaxAyer)
	(cond 
		((equal tempMaxAyer (car (member tempMaxAyer max_enero))) T)
		((equal tempMaxAyer (car (member tempMaxAyer max_febrero))) T)
		(T NIL)
	)
)

			