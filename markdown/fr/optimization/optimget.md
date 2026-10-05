# optimget

Lire la valeur d'une option d'optimization.

## 📝 Syntaxe

- value = optimget(options, name)
- value = optimget(options, name, default)

## 📥 Argument d'entrée

- options - structure ou objet d'options.
- name - nom de l'option.
- default - valeur de repli.

## 📤 Argument de sortie

- value - valeur de l'option ou valeur de repli.

## 📄 Description


<b>optimget</b> retourne une option nommée et utilise la valeur de repli lorsque l'option est absente ou vide.

## Fonction(s) utilisée(s)


    optimset
  

## 📚 Bibliographie

J. Nocedal and S. J. Wright, Numerical Optimization, Springer, 2006.

## 💡 Exemple



```matlab
opts = optimset('MaxIter', 200);
maxiter = optimget(opts, 'MaxIter', 100)

```


## 🔗 Voir aussi

[optimset](../optimization/optimset.md), [optimoptions](../optimization/optimoptions.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
