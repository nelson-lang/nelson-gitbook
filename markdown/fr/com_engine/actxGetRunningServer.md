# actxGetRunningServer

Handle vers une instance en cours d'exécution du serveur Automation.

## 📝 Syntaxe

- h = actxGetRunningServer(progid)

## 📥 Argument d'entrée

- progid - une chaîne : le nom d'un serveur COM.

## 📤 Argument de sortie

- h - un objet COM.

## 📄 Description

<b>h = actxGetRunningServer(progid)</b> obtient une référence vers une instance en cours d'exécution du serveur Automation OLE/COM.

<b>progid</b> est l'identifiant programmatique de l'objet serveur Automation et <b>h</b> est le handle vers l'interface par défaut de l'objet serveur.

La fonction retourne une erreur si le serveur spécifié par progid n'est pas actuellement en cours d'exécution ou si l'objet serveur n'est pas enregistré.

Lorsque plusieurs instances du serveur Automation sont en cours d'exécution, le système d'exploitation contrôle le comportement de cette fonction.

## 💡 Exemple

```matlab
h = actxGetRunningServer('Excel.application')
```

## 🔗 Voir aussi

[actxserver](../com_engine/actxserver.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
