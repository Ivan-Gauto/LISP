(defun ingresarPalabra()
    (print "Ingrese palabra:")
    (let ((palabra (read)))
    	(if (listp palabra) palabra (print "La palabra no es una lista"))
    )
)

(defun palindromo()
	(let ((palabra (ingresarPalabra)))
		(equal palabra (reverse palabra))
	)
)	
		