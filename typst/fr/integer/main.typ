#import "nelson_help.typ": *

= Types entiers

Le module Types entiers fournit des outils pour travailler avec des entiers signés et non signés de différentes tailles dans Nelson.

 Ces types sont particulièrement utiles pour stocker et traiter efficacement de grands jeux de données, tels que des images ou de grands tableaux numériques.

 Le module prend en charge les conversions entre formats entiers et fournit l'accès aux valeurs minimale et maximale représentables pour chaque type entier, garantissant des calculs entiers sûrs et précis.

== Functions

- #nlink(<integer:int16>)[int16]: Convertit en entier signé 16 bits.
- #nlink(<integer:int32>)[int32]: Convertit en entier signé 32 bits.
- #nlink(<integer:int64>)[int64]: Convertit en entier signé 64 bits.
- #nlink(<integer:int8>)[int8]: Convertit en entier signé 8 bits.
- #nlink(<integer:intmax>)[intmax]: Renvoie le plus grand entier pouvant être représenté pour un type entier.
- #nlink(<integer:intmin>)[intmin]: Renvoie le plus petit entier pouvant être représenté pour un type entier.
- #nlink(<integer:uint16>)[uint16]: Convertit en entier non signé 16 bits.
- #nlink(<integer:uint32>)[uint32]: Convertit en entier non signé 32 bits.
- #nlink(<integer:uint64>)[uint64]: Convertit en entier non signé 64 bits.
- #nlink(<integer:uint8>)[uint8]: Convertit en entier non signé 8 bits.


#nested[
#pagebreak(weak: true)
#include "int16.typ"
#pagebreak(weak: true)
#include "int32.typ"
#pagebreak(weak: true)
#include "int64.typ"
#pagebreak(weak: true)
#include "int8.typ"
#pagebreak(weak: true)
#include "intmax.typ"
#pagebreak(weak: true)
#include "intmin.typ"
#pagebreak(weak: true)
#include "uint16.typ"
#pagebreak(weak: true)
#include "uint32.typ"
#pagebreak(weak: true)
#include "uint64.typ"
#pagebreak(weak: true)
#include "uint8.typ"
]
