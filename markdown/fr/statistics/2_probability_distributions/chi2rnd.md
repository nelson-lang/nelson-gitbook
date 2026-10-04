# chi2rnd

Nombres aleatoires khi deux

## 📝 Syntaxe

- r = chi2rnd(nu)
- r = chi2rnd(nu, sz)
- r = chi2rnd(nu, sz1, ..., szN)

## 📥 Argument d'entrée

- nu - scalaire positif ou tableau : degres de liberte.
- sz - scalaire, vecteur ou dimensions separees par des virgules : taille de la sortie.

## 📤 Argument de sortie

- r - tableau : valeurs aleatoires.

## 📄 Description

<b>chi2rnd</b> genere des valeurs aleatoires de loi du khi deux.

## 💡 Exemple

```matlab
rng(0);
r = chi2rnd(4, 2, 3);
```

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
