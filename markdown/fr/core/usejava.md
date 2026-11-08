# usejava

Teste la disponibilité d'une fonctionnalité Java.

## 📝 Syntaxe

- tf = usejava(feature)

## 📥 Argument d'entrée

- feature - l'une de <b>'awt'</b>, <b>'jvm'</b> ou <b>'swing'</b>.

## 📤 Argument de sortie

- tf - un scalaire logique.

## 📄 Description


<b>tf = usejava(feature)</b> indique si la fonctionnalité Java <b>feature</b> est disponible. 

Nelson n'embarque aucune machine virtuelle Java ; <b>usejava</b> renvoie donc toujours <b>false</b>.

## 💡 Exemple



```matlab
tf = usejava('jvm')
```


## 🔗 Voir aussi

[version](../core/version.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
