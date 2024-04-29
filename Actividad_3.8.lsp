(defun primerTemp (lista) 
	(first lista))

(defun ultimaTemp (lista) 
	(car (last lista)))

(defun terceraTemp (lista) 
	(third lista))

(defun anteUlt (lista) 
	(elt lista 29))

(defun maxTemp (lista)
	(first (member 40 lista)))

(defun ingresarTemp()
	(let ((max_temp ()) (eleccion 0))
		(print "Ingrese la temperatura maxima para cada dia de Enero:")
		(setq max_temp (read))
		(print "Temperatura en: 1- primer dia 2- ultimo dia 3- tercer dia 4- anteultimo dia 5- maxima temperatura: ")
		(setq eleccion (read))
		(if (consp max_temp) )
		(cond  
			((= 1 eleccion) (primerTemp max_temp)) 
			((= 2 eleccion) (ultimaTemp max_temp)) 
			((= 3 eleccion) (terceraTemp max_temp)) 
			((= 4 eleccion) (anteUlt max_temp)) 
			((= 5 eleccion) (maxTemp max_temp))
			(print "los valores ingresados son incorrectos")
		) 
	)
)