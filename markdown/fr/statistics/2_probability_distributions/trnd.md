# trnd

Nombres aleatoires Student t

## 📝 Syntaxe

- r = trnd(nu)
- r = trnd(nu, sz)
- r = trnd(nu, sz1, ..., szN)

## 📥 Argument d'entrée

- nu - scalaire positif ou tableau : degres de liberte.
- sz - scalaire, vecteur ou dimensions separees par des virgules : taille de la sortie.

## 📤 Argument de sortie

- r - tableau : valeurs aleatoires.

## 📄 Description

<b>trnd</b> genere des valeurs aleatoires de loi Student t.

## 💡 Exemple

```matlab
rng(0);
r = trnd(5, 2, 3);
```

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
