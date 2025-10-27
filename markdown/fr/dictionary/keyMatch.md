# keyMatch

Vérifie si deux clés de dictionnaire sont identiques.

## 📝 Syntaxe

- tf = keyMatch(A, B)

## 📥 Argument d'entrée

- A - array
- B - array

## 📤 Argument de sortie

- tf - logique : true ou false.

## 📄 Description

<b>tf = keyMatch(A, B)</b> renvoie <b>true</b> si les tableaux <b>A</b> et <b>B</b> ont des classes, propriétés, dimensions et valeurs identiques, et renvoie <b>false</b> sinon.

Pour les classes personnalisées, la surcharge de <b>keyMatch</b> peut être nécessaire pour assurer une équivalence précise.

## 💡 Exemple

```matlab
A = {'a', 'b', 1};
B = {1, 'a', 'b'};
C = A;
D = B;
keyMatch(A, B)
keyMatch(A, C)
keyMatch(B, D)
```

## 🔗 Voir aussi

[keyHash](../dictionary/keyHash.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.5.0   | version initiale |

## 👤 Auteur

Allan CORNET
