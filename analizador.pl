% Autor: Alvaro
% Fecha: 20/03/2017

:-consult(draw).
%%%%%%Analizador sintacto%%%%%%
analizar(Oracion):-oracion(X,Oracion,[]),draw(X),writeln(X).

%%%%%%Tipos de oraciones%%%%%%
%Oracion simple
oracion(o(GrupoNominal,GrupoVerbal)) -->g_nominal(GrupoNominal), g_verbal(GrupoVerbal).
oracion(o(GrupoVerbal)) --> g_verbal(GrupoVerbal).
%Oracion coordinada
oracion(oc(o(GrupoNominal,GrupoVerbal),Conj,o(GrupoNominalCoor,GrupoVerbalCoor))) --> %Juan come manzanas y pepe bebe zumo
                                                                                   g_nominal(GrupoNominal),
                                                                                   g_verbal(GrupoVerbal),
                                                                                   conjuncion(Conj),
                                                                                   g_nominal(GrupoNominalCoor),
                                                                                   g_verbal(GrupoVerbalCoor),
                                                                                   {write(GrupoNominal)},
                                                                                   {writeln(GrupoVerbal)},
                                                                                   {write(GrupoNominalCoor)},
                                                                                   {writeln(GrupoVerbalCoor)}.
oracion(oc(o(GrupoNominal,GrupoVerbal),Conj,o(GrupoVerbalCoor))) --> %Juan come manzanas y bebe zumo
                                                            g_nominal(GrupoNominal),
                                                            g_verbal(GrupoVerbal),
                                                            conjuncion(Conj),
                                                            g_verbal(GrupoVerbalCoor),
                                                            {write(GrupoNominal)},
                                                            {writeln(GrupoVerbal)},
                                                            {write(GrupoNominal)},
                                                            {writeln(GrupoVerbalCoor)}.
oracion(oc(o(GrupoNominal,GrupoVerbal),Conj,o(GrupoVerbal1),Conj1,o(GrupoNominal2,GrupoVerbal2))) --> %Juan come manzanas y bebe zumo mientras maria estudia
                                                                                                   g_nominal(GrupoNominal),
                                                                                                   g_verbal(GrupoVerbal),
                                                                                                   conjuncion(Conj),
                                                                                                   g_verbal(GrupoVerbal1),
                                                                                                   conjuncion(Conj1),
                                                                                                   g_nominal(GrupoNominal2),
                                                                                                   g_verbal(GrupoVerbal2),
                                                                                                   {write(GrupoNominal)},
                                                                                                   {writeln(GrupoVerbal)},
                                                                                                   {write(GrupoNominal)},
                                                                                                   {writeln(GrupoVerbal1)},
                                                                                                   {write(GrupoNominal2)},
                                                                                                   {writeln(GrupoVerbal2)}.
oracion(oc(o(GrupoNom,GrupoVerb),Conj,o(GrupoNom1,GrupoVerb1),Conj1,o(GrupoNom2,GrupoVerb2))) --> %Juan come manzanas y pepe bebe zumo y maria salta
                                                                                   g_nominal(GrupoNom),
                                                                                   g_verbal(GrupoVerb),
                                                                                   conjuncion(Conj),
                                                                                   g_nominal(GrupoNom1),
                                                                                   g_verbal(GrupoVerb1),
                                                                                   conjuncion(Conj1),
                                                                                   g_nominal(GrupoNom2),
                                                                                   g_verbal(GrupoVerb2),
                                                                                   {write(GrupoNom)},
                                                                                   {writeln(GrupoVerb)},
                                                                                   {write(GrupoNom1)},
                                                                                   {writeln(GrupoVerb1)},
                                                                                   {write(GrupoNom2)},
                                                                                   {writeln(GrupoVerb2)}.
oracion(oc(o(GrupoNom,GrupoVerb),Conj,o(GrupoNom1,GrupoVerb1),Conj1,o(GrupoNom2,GrupoVerb2),Conj2,o(GrupoNom3,GrupoVerb3))) --> %Juan lee un libro y
                                                                                   g_nominal(GrupoNom),   %maria come una pera y
                                                                                   g_verbal(GrupoVerb),   %pepe salta
                                                                                   conjuncion(Conj),      %luis juega
                                                                                   g_nominal(GrupoNom1),
                                                                                   g_verbal(GrupoVerb1),
                                                                                   conjuncion(Conj1),
                                                                                   g_nominal(GrupoNom2),
                                                                                   g_verbal(GrupoVerb2),
                                                                                   conjuncion(Conj2),
                                                                                   g_nominal(GrupoNom3),
                                                                                   g_verbal(GrupoVerb3),
                                                                                   {write(GrupoNom)},
                                                                                   {writeln(GrupoVerb)},
                                                                                   {write(GrupoNom1)},
                                                                                   {writeln(GrupoVerb1)},
                                                                                   {write(GrupoNom2)},
                                                                                   {writeln(GrupoVerb2)},
                                                                                   {write(GrupoNom3)},
                                                                                   {writeln(GrupoVerb3)}.
oracion(oc(o(GrupoNom,GrupoVerb),Conj,o(GrupoNom1,GrupoVerb1),Conj1,o(GrupoNom2,GrupoVerb2),Conj2,o(GrupoNom3,GrupoVerb3),Conj3,o(GrupoNom4,GrupoVerb4))) -->
                                                                                   g_nominal(GrupoNom),   %Juan lee un libro y
                                                                                   g_verbal(GrupoVerb),   %maria come una pera y
                                                                                   conjuncion(Conj),      %pepe salta
                                                                                   g_nominal(GrupoNom1),  %mientras alvaro estudia y
                                                                                   g_verbal(GrupoVerb1),  %luis canta
                                                                                   conjuncion(Conj1),
                                                                                   g_nominal(GrupoNom2),
                                                                                   g_verbal(GrupoVerb2),
                                                                                   conjuncion(Conj2),
                                                                                   g_nominal(GrupoNom3),
                                                                                   g_verbal(GrupoVerb3),
                                                                                   conjuncion(Conj3),
                                                                                   g_nominal(GrupoNom4),
                                                                                   g_verbal(GrupoVerb4),
                                                                                   {write(GrupoNom)},
                                                                                   {writeln(GrupoVerb)},
                                                                                   {write(GrupoNom1)},
                                                                                   {writeln(GrupoVerb1)},
                                                                                   {write(GrupoNom2)},
                                                                                   {writeln(GrupoVerb2)},
                                                                                   {write(GrupoNom3)},
                                                                                   {writeln(GrupoVerb3)},
                                                                                   {write(GrupoNom4)},
                                                                                   {writeln(GrupoVerb4)}.
oracion(oc(o(GrupoNom,GrupoVerb),Conj,o(GrupoVerb1),Conj1,o(GrupoNom2,GrupoVerb2),Conj2,o(GrupoVerb3),Conj3,o(GrupoNom4,GrupoVerb4))) -->
                                                                                   g_nominal(GrupoNom),
                                                                                   g_verbal(GrupoVerb),
                                                                                   conjuncion(Conj),
                                                                                   g_verbal(GrupoVerb1),
                                                                                   conjuncion(Conj1),
                                                                                   g_nominal(GrupoNom2),
                                                                                   g_verbal(GrupoVerb2),
                                                                                   conjuncion(Conj2),
                                                                                   g_verbal(GrupoVerb3),
                                                                                   conjuncion(Conj3),
                                                                                   g_nominal(GrupoNom4),
                                                                                   g_verbal(GrupoVerb4),
                                                                                   {write(GrupoNom)},
                                                                                   {writeln(GrupoVerb)},
                                                                                   {write(GrupoNom)},
                                                                                   {writeln(GrupoVerb1)},
                                                                                   {write(GrupoNom2)},
                                                                                   {writeln(GrupoVerb2)},
                                                                                   {write(GrupoNom2)},
                                                                                   {writeln(GrupoVerb3)},
                                                                                   {write(GrupoNom4)},
                                                                                   {writeln(GrupoVerb4)}.
%Oracion subordinada de relativo
oracion(or(o(GrupoNominal,GrupoVerbalSub),o(GrupoVerbal))) --> %Juan que es listo come manzanas
                                                            g_nominal(GrupoNominal),
                                                            g_verbalSub(GrupoVerbalSub),
                                                            g_verbal(GrupoVerbal),
                                                            {write(GrupoNominal)},
                                                            {writeln(GrupoVerbalSub)},
                                                            {write(GrupoNominal)},
                                                            {writeln(GrupoVerbal)}.
                                                                                   
%Oraciones compuestas
oracion(ocm(oc(GrupoNominal,GrupoVerbal),Conj,or(o(GrupoNominal1,GrupoVerbSub),o(GrupoVerbal2)))) --> %juan estudia derecho y maria, que es lista, estudia filosofia
                                                                                    g_nominal(GrupoNominal),
                                                                                    g_verbal(GrupoVerbal),
                                                                                    conjuncion(Conj),
                                                                                    g_nominal(GrupoNominal1),
                                                                                    g_verbalSub(GrupoVerbSub),
                                                                                    g_verbal(GrupoVerbal2),
                                                                                    {write(GrupoNominal)},
                                                                                    {writeln(GrupoVerbal)},
                                                                                    {write(GrupoNominal1)},
                                                                                    {writeln(GrupoVerbSub)},
                                                                                    {write(GrupoNominal1)},
                                                                                    {writeln(GrupoVerbal2)}.
oracion(ocm(or(o(GrupoNominal1,GrupoVerbSub),o(GrupoVerbal2)),Conj,oc(GrupoNominal,GrupoVerbal))) --> %juan, que es listo, estudia derecho y maria estudia filosofia
                                                                                    g_nominal(GrupoNominal1),
                                                                                    g_verbalSub(GrupoVerbSub),
                                                                                    g_verbal(GrupoVerbal2),
                                                                                    conjuncion(Conj),
                                                                                    g_nominal(GrupoNominal),
                                                                                    g_verbal(GrupoVerbal),
                                                                                    {write(GrupoNominal1)},
                                                                                    {writeln(GrupoVerbSub)},
                                                                                    {write(GrupoNominal1)},
                                                                                    {writeln(GrupoVerbal2)},
                                                                                    {write(GrupoNominal)},
                                                                                    {writeln(GrupoVerbal)}.
%%%%%%Grupos sintacticos%%%%%%
%Grupo nominal
g_nominal(gn(N)) --> nombre(N).    %Juan
g_nominal(gn(D,N)) --> determinante(D), nombre(N). %El juan
g_nominal(gn(D,N,A)) --> determinante(D), nombre(N), adjetivo(A). %El juan grande
g_nominal(gn(Nombre,Conj,Nombre1)) --> nombre(Nombre), conjuncion(Conj), nombre(Nombre1).          %Juan y Pepe
g_nominal(gn(D,N,Conj,Det,Nom)) --> determinante(D), nombre(N), conjuncion(Conj), determinante(Det), nombre(Nom). %El Juan y el Pepe
g_nominal(gn(N,Conj,Det,Nom)) --> nombre(N), conjuncion(Conj), determinante(Det), nombre(Nom). %Juan yy el Pepe
g_nominal(gn(D,N,Conj,Nom)) --> determinante(D), nombre(N), conjuncion(Conj), nombre(Nom). %El Juan y Pepe
g_nominal(gn(D,N,Prep,Nom)) --> determinante(D), nombre(N), preposicion(Prep), nombre(Nom). %El procesador de textos
g_nominal(gn(D,N,Adv,Adj)) --> determinante(D), nombre(N) ,adverbio(Adv), adjetivo(Adj).      %Una herramienta bastante potente

%Grupo verbal subordinado

g_verbalSub(gv(Pronombre,Verbo,GrupoNominal)) --> %que es policia
                                                 pronombre(Pronombre),
                                                 verbo(Verbo),
                                                 g_nominal(GrupoNominal).
g_verbalSub(gv(SgPuntuacion,Pronombre,Verbo,GrupoNominal,SgPuntuacion1)) --> %, que es policia,
                                                                          signo(SgPuntuacion),
                                                                          pronombre(Pronombre),
                                                                          verbo(Verbo),
                                                                          g_nominal(GrupoNominal),
                                                                          signo(SgPuntuacion1).
g_verbalSub(gv(Pronombre,Verbo,GrupoAdjetival)) --> %que es listo
                                                 pronombre(Pronombre),
                                                 verbo(Verbo),
                                                 g_adjetival(GrupoAdjetival).
g_verbalSub(gv(SgPuntuacion,Pronombre,Verbo,GrupoAdjetival,SgPuntuacion1)) --> %, que es listo,
                                                                            signo(SgPuntuacion),
                                                                            pronombre(Pronombre),
                                                                            verbo(Verbo),
                                                                            g_adjetival(GrupoAdjetival),
                                                                            signo(SgPuntuacion1).
g_verbalSub(gv(Pronombre,Verbo,GrupoAdverbial,GrupoAdjetival)) --> %que es muy listo
                                                                pronombre(Pronombre),
                                                                verbo(Verbo),
                                                                g_adverbial(GrupoAdverbial),
                                                                g_adjetival(GrupoAdjetival).
g_verbalSub(gv(SgPuntuacion,Pronombre,Verbo,GrupoAdverbial,GrupoAdjetival,SgPuntuacion1)) --> %, que es muy listo,
                                                                                           signo(SgPuntuacion),
                                                                                           pronombre(Pronombre),
                                                                                           verbo(Verbo),
                                                                                           g_adverbial(GrupoAdverbial),
                                                                                           g_adjetival(GrupoAdjetival),
                                                                                           signo(SgPuntuacion1).
%Grupo verbal
g_verbal(gv(V)) --> verbo(V).   %come
g_verbal(gv(Verbo,GrupoPreposicional,Verbo1)) --> %locuciones verbales
                                               verbo(Verbo),
                                               g_preposicional(GrupoPreposicional),
                                               verbo(Verbo1).
g_verbal(gv(Verbo,GrupoPreposicional,Verbo1,GrupoNominal)) --> %sirve para escribir documentos
                                                            verbo(Verbo),
                                                            g_preposicional(GrupoPreposicional),
                                                            verbo(Verbo1),
                                                            g_nominal(GrupoNominal).
g_verbal(gv(Verbo,GrupoNominal)) --> %Come manzanas
                                  verbo(Verbo),
                                  g_nominal(GrupoNominal).
g_verbal(gv(Verbo,GrupoAdverbial,GrupoNominal)) --> %Come muchas manzanas
                                  verbo(Verbo),
                                  g_adverbial(GrupoAdverbial),
                                  g_nominal(GrupoNominal).
g_verbal(gv(Verbo,GrupoNominal,GrupoAdjetival)) --> %Come manzanas rojas
                                                 verbo(Verbo),
                                                 g_nominal(GrupoNominal),
                                                 g_adjetival(GrupoAdjetival).
g_verbal(gv(Verbo,GrupoAdverbial,GrupoNominal,GrupoAdjetival)) --> %Come muchas manzanas rojas
                                  verbo(Verbo),
                                  g_adverbial(GrupoAdverbial),
                                  g_nominal(GrupoNominal),
                                  g_adjetival(GrupoAdjetival).
g_verbal(gv(Verbo,GrupoPreposicional,GrupoNominal)) --> %Come con Pepe
                                                     verbo(Verbo),
                                                     g_preposicional(GrupoPreposicional),
                                                     g_nominal(GrupoNominal).
g_verbal(gv(Verbo,GrupoAdverbial)) --> %Come mucho
                                    verbo(Verbo),
                                    g_adverbial(GrupoAdverbial).
g_verbal(gv(Verbo,GrupoAdverbial,GrupoNominal)) --> %Come mucho jamon
                                                 verbo(Verbo),
                                                 g_adverbial(GrupoAdverbial),
                                                 g_nominal(GrupoNominal).
g_verbal(gv(Verbo,GrupoAdjetival)) --> %es listo
                                    verbo(Verbo),
                                    g_adjetival(GrupoAdjetival).
g_verbal(gv(Verbo,GrupoAdverbial,GrupoAdjetival)) --> %es muy listo
                                                 verbo(Verbo),
                                                 g_adverbial(GrupoAdverbial),
                                                 g_adjetival(GrupoAdjetival).
g_verbal(gv(Verbo,GrupoNominal,GrupoPreposicional,GrupoNominal1)) --> %Come jamon con Pepe
                                                                   verbo(Verbo),
                                                                   g_nominal(GrupoNominal),
                                                                   g_preposicional(GrupoPreposicional),
                                                                   g_nominal(GrupoNominal1).
g_verbal(gv(Verbo,GrupoNominal,GrupoAdjetival,GrupoPreposicional,GrupoNominal1)) --> %Come jamon curado con Pepe
                                                                                  verbo(Verbo),
                                                                                  g_nominal(GrupoNominal),
                                                                                  g_adjetival(GrupoAdjetival),
                                                                                  g_preposicional(GrupoPreposicional),
                                                                                  g_nominal(GrupoNominal1).
g_verbal(gv(Verbo,GrupoPreposicional,GrupoNominal,GrupoAdverbial)) --> %Come con Pepe mucho
                                                                    verbo(Verbo),
                                                                    g_preposicional(GrupoPreposicional),
                                                                    g_nominal(GrupoNominal),
                                                                    g_adverbial(GrupoAdverbial).
g_verbal(gv(Verbo,GrupoAdverbial,GrupoPreposicional,GrupoNominal)) --> %Come mucho con Pepe
                                                                    verbo(Verbo),
                                                                    g_adverbial(GrupoAdverbial),
                                                                    g_preposicional(GrupoPreposicional),
                                                                    g_nominal(GrupoNominal).

g_verbal(gv(Verbo,GrupoPreposicional,GrupoNominal,GrupoAdverbial,GrupoNominal1)) -->  %Come con Pepe mucho jamon
                                                                                  verbo(Verbo),
                                                                                  g_preposicional(GrupoPreposicional),
                                                                                  g_nominal(GrupoNominal),
                                                                                  g_adverbial(GrupoAdverbial),
                                                                                  g_nominal(GrupoNominal1).
g_verbal(gv(Verbo,GrupoPreposicional,GrupoNominal,GrupoAdverbial,GrupoNominal1,GrupoAdjetival)) -->  %Come con Pepe mucho jamon curado
                                                                                                 verbo(Verbo),
                                                                                                 g_preposicional(GrupoPreposicional),
                                                                                                 g_nominal(GrupoNominal),
                                                                                                 g_adverbial(GrupoAdverbial),
                                                                                                 g_nominal(GrupoNominal1),
                                                                                                 g_adjetival(GrupoAdjetival).
g_verbal(gv(Verbo,GrupoAdverbial,GrupoNominal,GrupoPreposicional,GrupoNominal1)) -->  %Come mucho jamon con Pepe
                                                                                  verbo(Verbo),
                                                                                  g_adverbial(GrupoAdverbial),
                                                                                  g_nominal(GrupoNominal),
                                                                                  g_preposicional(GrupoPreposicional),
                                                                                  g_nominal(GrupoNominal1).
g_verbal(gv(Verbo,GrupoAdverbial,GrupoNominal,GrupoAdjetival,GrupoPreposicional,GrupoNominal1)) -->  %Come mucho jamon curado con Pepe
                                                                                                 verbo(Verbo),
                                                                                                 g_adverbial(GrupoAdverbial),
                                                                                                 g_nominal(GrupoNominal),
                                                                                                 g_adjetival(GrupoAdjetival),
                                                                                                 g_preposicional(GrupoPreposicional),
                                                                                                 g_nominal(GrupoNominal1).
g_verbal(gv(Verbo,GrupoPreposicional,GrupoNominal,GrupoPreposicional1,GrupoNominal1)) --> %escala en el rocodromo por las tardes
                                                                                       verbo(Verbo),
                                                                                       g_preposicional(GrupoPreposicional),
                                                                                       g_nominal(GrupoNominal),
                                                                                       g_preposicional(GrupoPreposicional1),
                                                                                       g_nominal(GrupoNominal1).
%Grupo preposicional
g_preposicional(gp(Prep)) --> preposicion(Prep),!.
%Grupo adjetival
g_adjetival(gadj(Adj)) --> adjetivo(Adj),!.
%Grupo adverbial
g_adverbial(gadv(Adv)) --> adverbio(Adv),!.
%Signo puntuacion
s_puntuacion(sgp(Sig)) --> signo(Sig),!.
%Pronombre relativo
p_relativo(prlt(Prlt)) --> pronombre(Prlt),!.

%%%%%%Diccionario%%%%%%
%Signos de puntuacion
signo(sig(X)) --> [X],{sig(X)}.
sig(',').
sig('.').
sig(':').
sig(';').
%Pronombres relativos
pronombre(prlt(X)) --> [X],{prlt(X)}.
prlt('que').
%Determinantes
determinante(det(X)) --> [X],{det(X)}.
det(el).
det(la).
det(los).
det(las).
det(un).
det(una).
det(unos).
det(unas).
%Nombres comunes
nombre(n(X)) --> [X],{n(X)}.
n(hombre).
n(mujer).
n(gato).
n(raton).
n(manzana).
n(manzanas).
n(pera).
n(peras).
n(patata).
n(patatas).
n(universidad).
n(colegio).
n(casa).
n(tenedor).
n(cuchillo).
n(mesa).
n(agua).
n(filosofia).
n(derecho).
n(pelo).
n(cafe).
n(mensa).
n(periodico).
n(cerveza).
n(paella).
n(novela).
n(zumo).
n(rocodromo).
n(tardes).
n(procesador).
n(textos).
n(herramienta).
n(documentos).
%Nombres propios
nombre(np(X)) --> [X],{np(X)}.
np(juan).
np(pepe).
np(maria).
np(irene).
np(hector).
np(alvaro).
np(julia).
np(antonio).
np(marta).
np(irene).
%Verbos
verbo(v(X)) --> [X],{v(X)}.
v(bebe).
v(beben).
v(come).
v(comen).
v(ama).
v(aman).
v(salta).
v(saltan).
v(corre).
v(corren).
v(es).
v(son).
v(estudia).
v(estudian).
v(lee).
v(tiene).
v(es).
v(toma).
v(recoge).
v(prefiere).
v(canta).
v(salta).
v(escala).
v(sirve).
v(escribir).
%Adjetivos
adjetivo(adj(X)) --> [X],{adj(X)}.
adj(rojo).
adj(roja).
adj(rojas).
adj(gris).
adj(verde).
adj(grande).
adj(enano).
adj(guapo).
adj(guapa).
adj(listo).
adj(lista).
adj(alto).
adj(alta).
adj(rubio).
adj(morena).
adj(moreno).
adj(fritas).
adj(agil).
adj(delicado).
adj(potente).
%Adverbios
adverbio(adv(X)) --> [X],{adv(X)}.
adv(ahora).
adv(antes).
adv(despues).
adv(aqui).
adv(alli).
adv(cerca).
adv(mucho).
adv(muchos).
adv(mucha).
adv(muchas).
adv(poco).
adv(bastante).
adv(muy).
adv(casi).
adv(todo).
adv(mientras).
adv(solamente).
%Conjunciones
conjuncion(conj(X)) --> [X],{conj(X)}.
conj(y).
conj(e).
conj(pero).
conj(aunque).
conj(tambien).
conj(sino).
conj(que).
conj(mientras).
%Preposiciones
preposicion(prep(X)) --> [X],{prep(X)}.
prep(a).
prep(ante).
prep(bajo).
prep(con).
prep(de).
prep(desde).
prep(en).
prep(entre).
prep(hasta).
prep(mediante).
prep(durante).
prep(por).
prep(para).
%%%%%%Frases para analizar%%%%%%
%Frases practica
analiza1:-writeln('el hombre come una manzana'),analizar([el,hombre,come,una,manzana]).
analiza2:-writeln('la mujer come manzanas'),analizar([la,mujer,come,manzanas]).
analiza3:-writeln('maria come una manzana'),analizar([maria,come,una,manzana,roja]).
analiza4:-writeln('juan ama a maria'),analizar([juan,ama,a,maria]).
analiza5:-writeln('el gato grande come un raton gris'),analizar([el,gato,grande,come,un,raton,gris]).
analiza6:-writeln('juan estudia en la universidad'),analizar([juan,estudia,en,la,universidad]).
analiza7:-writeln('juan y maria comen una manzana con un tenedor y un cuchillo'),analizar([juan,y,maria,comen,una,manzana,con,un,tenedor,y,un,cuchillo]).
analiza8:-writeln('juan estudia filosofia pero maria estudia derecho'),analizar([juan,estudia,filosofia,pero,maria,estudia,derecho]).
analiza9:-writeln('juan come y bebe mientras maria lee'),analizar([juan,come,y,bebe,mientras,maria,lee]).
analiza10:-writeln('juan, que es muy alto, tiene el pelo rubio'),analizar([juan,',',que,es,muy,alto,',',tiene,el,pelo,rubio]).
analiza11:-
          writeln('juan, que es muy alto, tiene el pelo rubio pero maria es morena'),
          analizar([juan,',',que,es,muy,alto,',',tiene,el,pelo,rubio,pero,maria,es,morena]).
analiza12:-writeln('juan es moreno y maria es alta'),analizar([juan,es,moreno,y,maria,es,alta]).
analiza13:-writeln('maria toma un cafe mientras juan recoge la mesa'),analizar([maria,toma,un,cafe,mientras,juan,recoge,la,mesa]).
analiza14:-writeln('juan toma cafe y lee el periodico'),analizar([juan,toma,cafe,y,lee,el,periodico]).
analiza15:-writeln('juan es moreno y maria es alta'),analizar([juan,es,moreno,y,maria,es,alta]).
analiza16:-writeln('juan y hector comen patatas fritas y beben cerveza'),analizar([juan,y,hector,comen,patatas,fritas,y,beben,cerveza]).
analiza17:-writeln('juan come patatas fritas pero maria prefiere paella aunque hector toma cafe e irene lee una novela'),
        analizar([juan,come,patatas,fritas,pero,maria,prefiere,paella,aunque,hector,toma,cafe,e,irene,lee,una,novela]).
analiza18:-writeln('irene canta y salta mientras juan estudia'),analizar([irene,canta,y,salta,mientras,juan,estudia]).
analiza19:-writeln('hector come patatas fritas y bebe zumo mientras juan canta y salta aunque maria lee una novela'),
        analizar([hector,come,patatas,fritas,y,bebe,zumo,mientras,juan,canta,y,salta,aunque,maria,lee,una,novela]).
analiza20:-writeln('juan, que es agil, escala en el rocodromo por las tardes'),analizar([juan,',',que,es,agil,',',escala,en,el,rocodromo,por,las,tardes]).
analiza21:-writeln('juan, que es muy delicado, come solamente manzanas rojas'),analizar([juan,',',que,es,muy,delicado,',',come,solamente,manzanas,rojas]).
analiza22:-writeln('el procesador de textos, que es una herramienta bastante potente, sirve para escribir documentos'),
        analizar([el,procesador,de,textos,',',que,es,una,herramienta,bastante,potente,',',sirve,para,escribir,documentos]).
