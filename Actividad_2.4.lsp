(setq dias_enero '(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31))
(setq temp_promedio '(30 31 34 33 35 36 37 35 36 34 33 32 31 30 33 35 36 36 38 35 37 39 34 35 37 38 39 40 36 34 33))

(defun juntarListas (lista1 lista2)  
	(let (lista3)
		(mapcar (lambda (x y) (list x y)) lista1 lista2))		
)