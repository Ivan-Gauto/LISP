(setq max_temp '(30 32 31 29 28 27 26 25 26 28 30 31 32 33 33 32 30 28 27 25 24 25 26 28 40 30 30 29 28 27 26))

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