# eye

Crée une matrice identité.

## 📝 Syntaxe

- R = eye
- R = eye(n)
- R = eye(n, m)
- R = eye(n, m, ..., z)
- R = eye(n, m, ..., z, 'like', V)
- R = eye(n, m, ..., z, classname)

## 📥 Argument d'entrée

- n - une variable : matrice n-par-n
- m - une variable : matrice n-par-m

## 📄 Description

<b>eye</b> retourne une matrice identité.

## 💡 Exemples

```matlab
eye(3)
```

```matlab
eye(3,1,3,'single')
```

```matlab
A = single([3 3])
B = eye(2,4,'like', A)
```

```matlab
A = eye(0, 4)
```

## 🔗 Voir aussi

[ones](../constructors_functions/ones.md), [zeros](../constructors_functions/zeros.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
