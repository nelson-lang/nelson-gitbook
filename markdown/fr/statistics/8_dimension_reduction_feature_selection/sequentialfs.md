# sequentialfs

Selection sequentielle de variables avec un critere utilisateur.

## 📝 Syntaxe

- tf = sequentialfs(fun, X, y)
- tf = sequentialfs(fun, X1, ..., XN, Name, Value)
- [tf, history] = sequentialfs(...)

## 📄 Description

<b>sequentialfs</b> selectionne des variables parmi les colonnes de la premiere entree de donnees avec une fonction critere fournie par l'utilisateur.

Les options supportees incluent CV, Direction, KeepIn, KeepOut, NFeatures, NullModel et Options. CV peut etre un entier positif, none ou resubstitution.

La structure history contient les champs In et Crit qui decrivent le masque de variables selectionnees et la valeur du critere a chaque etape.

## 💡 Exemple

```matlab
X = [1 0 0; 2 0 1; 3 1 0; 4 1 1; 5 2 0; 6 2 1];
y = X(:,1);
fun = @(Xt,yt,Xv,yv) sum((yv - Xv(:,1)).^2);
[tf, history] = sequentialfs(fun, X, y, 'CV', 'resubstitution', 'NFeatures', 1)
```

## 🔗 Voir aussi

[relieff](../../statistics/relieff.md), [statset](../../statistics/statset.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
