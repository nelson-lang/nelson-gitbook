# COM_delete

Supprime un contrôle ou serveur COM.

## 📝 Syntaxe

- COM_delete(h)
- delete(h)

## 📥 Argument d'entrée

- h - un handle : un objet COM.

## 📄 Description

<b>delete(h)</b> libère toutes les interfaces dérivées du serveur ou contrôle COM spécifié, puis supprime le serveur ou contrôle lui-même.

Ceci est différent de la libération d'une interface, qui libère et invalide seulement l'interface particulière.

N'oubliez pas de nettoyer h ensuite.

## 💡 Exemple

```matlab
pTextToSpeech = actxserver('Sapi.SpVoice')
delete(pTextToSpeech)
clear pTextToSpeech
```

## 🔗 Voir aussi

[actxserver](../com_engine/actxserver.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
