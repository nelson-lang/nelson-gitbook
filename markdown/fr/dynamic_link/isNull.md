# isNull

Determiner si un pointeur de bibliotheque est nul.

## 📝 Syntaxe

- tf = isNull(ptr)

## 📥 Argument d'entrée

- ptr - handle libpointer ou objet qui implemente le test de pointeur nul.

## 📤 Argument de sortie

- tf - valeur logique : true lorsque l'adresse du pointeur est nulle.

## 📄 Description


isNull renvoie une valeur logique indiquant si un objet pointeur de lien dynamique represente une adresse nulle. 

La fonction est destinee aux objets pointeurs renvoyes par le module dynamic link.

## Fonction(s) utilisée(s)


    libpointer
  

## 💡 Exemple

Creer un pointeur nul et le tester.

```matlab
p = libpointer();
tf = isNull(p)
```


## 🔗 Voir aussi

[libpointer](../dynamic_link/libpointer.md), [dlopen](../dynamic_link/dlopen.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
