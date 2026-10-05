# frnd

Nombres aleatoires F

## 📝 Syntaxe

- r = frnd(v1, v2)
- r = frnd(v1, v2, sz)
- r = frnd(v1, v2, sz1, ..., szN)

## 📥 Argument d'entrée

- v1 - scalaire positif ou tableau : degres de liberte du numerateur.
- v2 - scalaire positif ou tableau : degres de liberte du denominateur.
- sz - scalaire, vecteur ou dimensions separees par des virgules : taille de la sortie.

## 📤 Argument de sortie

- r - tableau : valeurs aleatoires.

## 📄 Description


<b>frnd</b> genere des valeurs aleatoires de loi F.

## 💡 Exemple



```matlab
rng(0);
r = frnd(5, 7, 2, 3);
```


## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
