És possible que, enyorant temps més civilitzats, trobem a faltar la possibilitat de fer programes senzills, que consisteixin només en una llista d’instruccions que s’executa seqüencialment, llevat que no ens trobem algun goto (salt incondicional) d’aquells que són quasi bé un tabú avui dia.

# Variables Locals

```
GET: "#s<k> binding"
SET: "#s<k> changeBinding: v"
```

# Salts incondicionals

```
GOTO: "#label<k> binding value"
RETURN foo: " #RETURN binding value: foo"
DEFAULT RETURN: "#RETURN binding value: nil"
```

# Consideracions Especials

- Els #s1, #s2, #label1, #label2, etc. poden ser símbols qualsevol excepte #RETURN.

- Els bloc1, bloc2, etc. són blocs sense paràmetres.

- En aquest exemple utilitzo Arrays dinàmics { a1  . a2  . ... . aN  } per a tot (les parelles variable-valor, la llista de variables, les parelles etiqueta-bloc i la llista d’instruccions), però crec que podeu utilitzar qualsevol col·lecció.

- NO feu servir #label<k> changeBinding: v sota cap circumstància.