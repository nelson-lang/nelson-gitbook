# dbup

Monter dans la pile d'appels en mode débogage.

## 📝 Syntaxe

- dbup
- dbup n

## 📥 Argument d'entrée

- n - entier positif scalaire spécifiant le nombre de niveaux à monter dans la pile d'appels.

## 📄 Description

<b>dbup</b> change le contexte de l'espace de travail et de la fonction courante pour celui de la fonction ou du script appelant en mode débogage. Cela permet d'inspecter l'espace de travail de l'appelant pour comprendre comment les arguments d'entrée ont été produits.

Chaque appel à <b>dbup</b> monte d'un niveau dans la pile d'appels, s'arrêtant à l'espace de travail de base. L'exécution peut continuer sans revenir à la ligne en pause de l'espace de travail.

<b>dbup n</b> est équivalent à exécuter <b>dbup</b> <i>n</i> fois.

Cette fonction ne peut être appelée que depuis la ligne de commande en mode débogage.

## 💡 Exemples

         Voir l'espace de travail d'une fonction appelante lors du débogage.

```matlab

function n = myfile(x)
  n = myfunc(x - 1);
end

function z = myfunc(y)
  z = 2 / y;
end

dbstop in myfile>myfunc
myfile(1)
dbup
whos

```

         Monter plusieurs niveaux dans la pile d'appels en une seule étape.

```matlab

dbup 2

```

## 🔗 Voir aussi

[dbdown](../debugger/dbdown.md), [dbstack](../debugger/dbstack.md), [whos](../memory_manager/whos.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.16.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
