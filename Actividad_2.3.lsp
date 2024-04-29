(setq max_temp '(30 32 31 29 28 27 26 25 26 28 30 31 32 33 33 32 30 28 27 25 24 25 26 28 40 30 30 29 28 27 26))
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
	(car (member '(10 9.5) lista :test 'equal)))

(defun primerTemp (lista) 
	(FIRST lista))

(defun ultimaTemp (lista) 
	(LAST lista))

(defun terceraTemp (lista) 
	(THIRD lista))

(defun anteUlt (lista) 
	(ELT lista 29))

(defun maxTemp (lista)
	(FIRST (MEMBER 40 lista)))