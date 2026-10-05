# betainc

Fonction bêta incomplète

## 📝 Syntaxe

- R = betainc(X, Z, W)
- R = betainc(X, Z, W, tail)

## 📥 Argument d'entrée

- X - une matrice réelle simple ou double. Elle doit être dans l'intervalle fermé [0, 1].
- Z - une matrice réelle simple ou double. Elle doit être non négative.
- W - une matrice réelle simple ou double. Elle doit être non négative.
- tail - une chaîne 'upper' ou 'lower' (par défaut).

## 📤 Argument de sortie

- R - résultat de la fonction betainc.

## 📄 Description


<b>betainc</b> calcule la fonction bêta incomplète (régularisée). 

La fonction bêta incomplète est définie comme suit : 
$$I_x(a,b) = \frac{B(x; a,b)}{B(a,b)} = \frac{1}{B(a,b)} \int_0^x t^{a-1} (1-t)^{b-1} \, dt$$
 

où 
$$B(a,b) = \int_0^1 t^{a-1} (1-t)^{b-1} \, dt$$
 

est la fonction bêta complète, et : 
$$B(a,b) = \frac{\Gamma(a)\Gamma(b)}{\Gamma(a+b)}$$
 

La fonction est normalisée de sorte que 
$$I_1(a,b) = 1$$
. 

Tous les tableaux doivent avoir la même taille ou n'importe lequel d'entre eux peut être scalaire.

## 💡 Exemple



```matlab
R = betainc(0.5, 1:10, 3)
```


## 🔗 Voir aussi

[gamma](../special_functions/gamma.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
