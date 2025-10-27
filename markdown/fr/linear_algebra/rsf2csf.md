# rsf2csf

Convertit la forme de Schur réelle en forme de Schur complexe.

## 📝 Syntaxe

- [Uc, Tc] = rsf2csf(U, T)

## 📥 Argument d'entrée

- U - unitary matrix (double or single, real or complex)
- T - schur form (double or single, real or complex)

## 📤 Argument de sortie

- Uc - transformed unitary matrix
- Tc - transformed schur form

## 📄 Description

<b>[Uc, Tc] = rsf2csf(U, T)</b> transforme les sorties de <b>[U, T] = schur(X)</b> pour des matrices réelles <b>X</b> de la forme de Schur réelle à la forme de Schur complexe.

## 💡 Exemple

```matlab
X = [1,     1,     1,     3;
     1,     2,     1,     1;
     1,     1,     3,     1;
    -2,     1,     1,     4];
[U, T] = schur(X)
[Uc, Tc] = rsf2csf(U, T)
```

## 🔗 Voir aussi

[schur](../linear_algebra/schur.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
