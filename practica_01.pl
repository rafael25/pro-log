hombre(domingo).
hombre(carlos).
hombre(ruben).
hombre(ramon).
hombre(benito).
hombre(gonzalo).
hombre(ramses).
hombre(mario).
hombre(samuel).
hombre(andres).

mujer(sonia).
mujer(ana).
mujer(brenda).
mujer(karina).
mujer(leticia).
mujer(daniela).
mujer(valeria).
mujer(luz).
mujer(belem).

edad(domingo, 72).
edad(carlos, 45).
edad(ruben, 31).
edad(ramon, 38).
edad(benito, 20).
edad(gonzalo, 8).
edad(ramses, 3).
edad(mario, 1).
edad(samuel, 6).
edad(andres, 2).

edad(sonia, 68).
edad(ana, 43).
edad(brenda, 24).
edad(karina, 30).
edad(leticia, 39).
edad(daniela, 18).
edad(valieria, 19).
edad(luz, 19).
edad(belem, 17).

padres(domingo, sonia, ana).
padres(domingo, sonia, brenda).
padres(domingo, sonia, ruben).
padres(domingo, sonia, ramon).

padres(carlos, ana, daniela).
padres(carlos, ana, benito).

padres(ruben, karina, gonzalo).
padres(ruben, karina, samuel).

padres(ramon, leticia, luz).
padres(ramon, leticia, belem).

padres(benito, valeria, ramses).
padres(benito, valeria, mario).

padres(desconocido, belem, andres).

esposos(domingo, sonia).
esposos(carlos, ana).
esposos(ruben, karina).
esposos(ramon, leticia).
esposos(benito, valeria).

esposo(El, Ella):- hombre(El), (esposos(El, Ella) ; esposos(Ella, El)).
esposa(Ella, El):- mujer(Ella), (esposos(El, Ella) ; esposos(Ella, El)).

papa(Papa, Hij):- hombre(Papa), (padres(Papa, _, Hij) ; padres(_, Papa, Hij)).
mama(Mama, Hij):- mujer(Mama), (padres(Mama, _, Hij) ; padres(_, Mama, Hij)).

hermano(El, Quien):- hombre(El), padres(P1, P2, El), (padres(P1, P2, Quien) ; padres(P2, P1, Quien)), El\=Quien.

hijo(El, Quien):- hombre(El), (papa(Quien) ; mama(Quien)).
