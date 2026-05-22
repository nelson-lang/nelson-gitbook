# dbdown

Descendre dans la pile d'appels en mode débogage.

## 📝 Syntaxe

- dbdown
- dbdown n

## 📥 Argument d'entrée

- n - entier positif scalaire spécifiant le nombre de niveaux à descendre dans la pile d'appels.

## 📄 Description

<b>dbdown</b> change le contexte de l'espace de travail et de la fonction courante pour celui de la fonction ou du script appelé en mode débogage. Cette commande est l'opposée de<b>dbup</b> et ne peut être utilisée qu'après au moins un appel à <b>dbup</b>.

Chaque appel à <b>dbdown</b> descend d'un niveau dans la pile d'appels, s'arrêtant à l'espace de travail et au contexte de fonction où l'exécution est en pause. L'exécution peut continuer sans revenir à la ligne en pause.

<b>dbdown n</b> est équivalent à exécuter <b>dbdown</b> <i>n</i> fois.

Cette fonction ne peut être appelée que depuis la ligne de commande en mode débogage.

## 💡 Exemples

      Se déplacer entre les espaces de travail des fonctions appelantes et appelées lors du débogage.

```matlab

function n = myfile(x)
  n = myfunc(x - 1);
end

function z = myfunc(y)
  z = 2 / y;
end

dbstop in myfile>myfunc
myfile(1)
whos
dbup
whos
dbdown
whos

```

        Descendre plusieurs niveaux dans la pile d'appels en une seule étape.

```matlab

dbdown 2

```

## 🔗 Voir aussi

[dbup](../debugger/dbup.md), [dbstack](../debugger/dbstack.md), [whos](../memory_manager/whos.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.16.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
