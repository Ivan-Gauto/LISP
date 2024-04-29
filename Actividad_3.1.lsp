(defun convertirPesos()
	(let((pesos 0))
	(print "ingrese el monto en pesos")
	(setq pesos (read))
	(if (numberp pesos) 
		(float (/ pesos 875)) 
		(print "el valor no es un numero"))))

(defun volumenCilindro()
	(let ((radio 0) (altura 0)) 
		(print "Ingrese el radio del cilindro")
		(setq radio (read)) 
		(print "Ingrese la altura del cilindro") 
		(setq altura (read))
		(if (and (numberp radio) (numberp altura))
			(* 3.14 (expt radio 2) altura) 
			(print "alguno de los datos no es un numero"))))

(defun volumenTrapecio()
	(let ((b1 0) (b2 0) (altura 0)) 
		(print "Ingrese b1")
		(setq b1 (read)) 
		(print "Ingrese b2")
		(setq b2 (read)) 
		(print "Ingrese la altura del cilindro") 
		(setq altura (read))
		(if (and (numberp b2) (numberp b1) (numberp altura))
			(* (/ (+ b1 b2) 2) altura) 
			(print "alguno de los datos no es un numero"))))