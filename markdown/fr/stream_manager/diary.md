# diary

Journal d'une session.

## 📝 Syntaxe

- diary()
- diary(filename)
- diary('off')
- diary('on')
- onoff = diary('get', 'Diary')
- filename = diary('get', 'DiaryFile')
- diary('set', 'DiaryFile', filename)
- diary('set', 'Diary', onoff)

## 📥 Argument d'entrée

- onoff - une chaîne : 'on' ou 'off'.
- filename - une chaîne : nom de fichier du journal courant.

## 📤 Argument de sortie

- onoff - une chaîne : 'on' ou 'off'.
- filename - une chaîne : nom de fichier à utiliser pour le journal.

## 📄 Description

<b>diary</b> crée un journal des entrées clavier et du texte de sortie résultant.

<b>diary</b> active ou désactive le mode journal.

<b>diary('off')</b> arrête l'enregistrement de la session dans le fichier journal.

<b>diary('on')</b> commence l'enregistrement d'une session dans un fichier nommé 'diary' dans le répertoire de travail courant.

<b>diary('set', 'Diary', onoff)</b> permet de démarrer ou d'arrêter le journal.

<b>onoff = diary('get', 'Diary')</b> renvoie l'état 'on' ou 'off' du journal.

<b>diary(filename)</b> enregistre la session dans le fichier nommé filename.

<b>filename = diary('get', 'DiaryFile')</b> renvoie le nom de fichier utilisé pour le journal.

<b>diary('set', 'DiaryFile', filename))</b> définit le nom de fichier pour le journal.

## 💡 Exemple

```matlab
filename = diary('get', 'DiaryFile')
onoff = diary('get', 'Diary')
```

## 🔗 Voir aussi

[history](../history_manager/history.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
