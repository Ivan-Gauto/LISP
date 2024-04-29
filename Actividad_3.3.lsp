(defun ingresarTemperatura()
	(let ((temp 0))
		(print "Ingrese temperatura:")
		(setq temp (read))
		(if (numberp temp) temp (print "La temperatura no es un valor numerico"))))

(defun clima()
	(let ((temp (ingresarTemperatura)))
	(cond 
		((< temp 0) 'Helado)
		((or (= temp 0) (< temp 10)) 'Frio)
		((or (= temp 10) (< temp 20)) 'Templado)
		((or (= temp 20) (< temp 30)) 'Calido)
		((> temp 30) 'Abrasador))
	)
)