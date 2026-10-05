# getnelsonmode

Retourne le mode courant de Nelson.

## 📝 Syntaxe

- m = getnelsonmode()

## 📤 Argument de sortie

- m - une chaîne de caractères.

## 📄 Description


<b>getnelsonmode()</b> renvoie le mode courant utilisé par Nelson. 

Les modes possibles sont : 

<b>BASIC\_ENGINE</b> : Nelson utilisé comme moteur sans graphisme. 

<b>ADVANCED\_ENGINE</b> : Nelson utilisé comme moteur avec graphisme/GUI. 

<b>BASIC\_TERMINAL</b> : Nelson lancé en terminal sans graphisme. 

<b>ADVANCED\_TERMINAL</b> : Nelson lancé en terminal avec graphisme/GUI. 

<b>GUI</b> : Nelson lancé comme application graphique (par défaut). 

<b>WEB\_GUI</b> : Nelson lancé comme application web.

## 💡 Exemple



```matlab
getnelsonmode()
```


## 🔗 Voir aussi

[executable](../engine/executable.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
