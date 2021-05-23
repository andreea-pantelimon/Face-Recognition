	In urma documentarii despre algoritmul k means si a intelegerii acestuia am urmat urmatorii pasi:
Pentru task 1:
	Am citit din fisiere datele necesare (numarul de centroizi, respectiv punctele).
Pentru task 2:
	Am ales din multimea punctelor, aleator, NC centroizi initiali, avand grija ca acestia sa nu se suprapuna. Folosindu-ma de notiunea de distanta euclidiana voi afla centroidul cel mai apropiat atribuit grupului de puncte. Astfel voi calcula distanta minima si voi inlocui centroizii pana cand voi gasi cel mai potrivit centroid (pana cand centroizii nu se mai modifica).
Pentru task 3:
	 Voi reprezenta fiecare grup format la taskul anterior cu o diferita culoare intr-o diagrama 3D. Voi crea un vector de culori dupa care grupul de puncte format isi va extrage pe rand culoarea din vector.
Pentru task 4:
	 Calculez din noua distanta minima dintre centroid si puncte pentru a deosebi grupurile formate anterior si le fac costul la fiecare in parte
Pentru task 5:
	Folosindu-ma de taskurile 2 si 4 voi pune intr-un vector costurile obtinute dupa care voi reprezenta grafic vectorul format folosindu-ma de functia plot.