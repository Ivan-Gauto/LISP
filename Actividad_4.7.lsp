(defun ingresarDatos()
	(let ((arch_graficos ()) (arch_texto ()) (tamaño 0))
		(print "Ingrese el tamaño de los archivos graficos en formato de lista:")
		(setq arch_graficos (read))
		(print "Ingrese el tamaño de los archivos de texto en formato de lista:")
		(setq arch_texto (read))
		(print "Ingrese tamaño de referencia en formato numerico:")
		(setq tamaño (read))
		(if (and (listp arch_graficos) (listp arch_texto) (numberp tamaño))
			(progn
        (tamañosGraficos arch_graficos)
        (compararArchivos arch_graficos arch_texto)
        (sumarArchivos arch_graficos arch_texto tamaño)
      )
			(print "Alguno de los datos es incorrecto")
		)
	)
)

(defun tamañosGraficos(arch_graficos)
	(> (first arch_graficos) (car (last arch_graficos)))
)

(defun compararArchivos(arch_graficos arch_texto)
	(> (sumarGraficos arch_graficos) (sumarTexto arch_texto))
)

(defun sumarGraficos(arch_graficos)
	(cond 
		((endp arch_graficos) 0)
		((numberp (car arch_graficos)) (+ (car arch_graficos) (sumarGraficos (cdr arch_graficos))))
		(T (sumarGraficos (cdr arch_graficos)))
	)
)

(defun sumarTexto(arch_texto)
	(cond 
		((endp arch_texto) 0)
		((numberp (car arch_texto)) (+ (car arch_texto) (sumarTexto (cdr arch_texto))))
		(T (sumarTexto (cdr arch_texto)))
	)
)

(defun sumarArchivos(arch_graficos arch_texto tamaño)
	(cond 
		((and (endp arch_graficos) (endp arch_texto)) nil)
		((and (numberp (car arch_texto)) (> (+ (car arch_graficos) (car arch_texto)) tamaño) (eq (car arch_graficos) (car arch_texto)) (numberp (car arch_graficos)))
			(cons (+ (car arch_graficos) (car arch_texto)) (sumarArchivos (cdr arch_graficos) (cdr arch_texto) tamaño))
		)
		(T (sumarArchivos (cdr arch_graficos) (cdr arch_texto) tamaño))
	)
)