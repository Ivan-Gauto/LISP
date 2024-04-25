(setq lluvias_enero '((12 2) (15 4) (16 7) (17 8) (10 9.5) (25 5) (26 5) (27 5)))

(defun primerDiaLluvia (lista)
	(first (first lista)) (second (first lista)))

(defun ultDiaLluvia (lista) 
	(first (first (last lista))))

(defun ultCantLluvia (lista) 
	(second (first (last lista))))

(defun cuartoDiaLluvias (lista)
	(second (elt lista 3)))

(defun buscar (lista) 
	(car (member '(10 9.5) lista :test 'equal))
)
