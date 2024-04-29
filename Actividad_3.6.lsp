(defun mediano() 
	(let ((valor1 0) (valor2 0) (valor3 0))
		(print "Ingrese valor 1:")
		(setq valor1 (read))
		(print "Ingrese valor 2:")
		(setq valor2 (read))
		(print "Ingrese valor 3:")
		(setq valor3 (read))
		(setq valorMax (max valor1 valor2 valor3)) 
		(setq valorMin (min valor1 valor2 valor3))
		( cond 
            ((and (/= valor1 valorMax) (/= valor1 valorMin)) valor1)
			((and (/= valor2 valorMax) (/= valor2 valorMin)) valor2)
			(T valor3)
		)
	)
)

		