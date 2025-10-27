# actxserver

Crée un serveur COM.

## 📝 Syntaxe

- h = actxserver(progid)
- h = actxserver(progid, 'machine', machineName)

## 📥 Argument d'entrée

- progid - une chaîne : le nom d'un serveur COM.
- machineName - une chaîne : le nom de la machine sur laquelle démarrer le serveur.

## 📤 Argument de sortie

- h - un objet COM.

## 📄 Description

<b>h = actxserver(progid)</b> crée un serveur COM en utilisant l'identifiant progid.

## 💡 Exemples

```matlab
h = actxserver('Excel.application')
```

```matlab
pTextToSpeech = actxserver('Sapi.SpVoice')
for i = 0:5
  invoke(pTextToSpeech, 'Speak', int2str(5 - i));
end
invoke(pTextToSpeech, 'Speak', _('Welcome to COM Interface for Nelson !'));
delete(pTextToSpeech)
clear pTextToSpeech
```

## 🔗 Voir aussi

[actxGetRunningSrv](../com_engine/actxGetRunningSrv.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
