# lt

inférieur à, opérateur <
  

## 📝 Syntaxe

- C = lt(A, B)

## 📥 Argument d'entrée

- A - une variable
- B - une variable

## 📤 Argument de sortie

- C - résultat de lt(A, B)

## 📄 Description


<b>C = lt(A, B)</b> renvoie un tableau logique avec des éléments égaux à<b>true</b> lorsque A est inférieur à B. 

<b>lt</b> compare uniquement la partie réelle des tableaux numériques. 

Lorsque les entrees sont des tableaux sparse numeriques ou logiques, le resultat est un tableau sparse logique. Les operandes sparse single et single-complex sont pris en charge. 

Pour les tableaux sparse complexes, les comparaisons d'ordre utilisent le module de chaque valeur.

## 💡 Exemples



```matlab
eye(2,2) &#60; ones(2, 2)
```


```matlab
0 &#60; i
```


```matlab
'Nelson' &#60; 'Noslen'
```


```matlab
'Nelson' &#60; 'l'
```


```matlab
lt(0.8 - 0.6 - 0.2, 0)
```


## 🔗 Voir aussi

[ne](../operators/ne.md), [le](../operators/le.md), [ge](../operators/ge.md), [gt](../operators/gt.md), [eq](../operators/eq.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |
| 2.0.0   | operandes sparse single et single-complex pris en charge. |

<!--
## 👤 Auteur

Allan CORNET
-->
