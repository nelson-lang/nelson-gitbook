# diary

Journal d'une session.

## Syntaxe

- diary()
- diary(filename)
- diary('off')
- diary('on')
- onoff = diary('get', 'Diary')
- filename = diary('get', 'DiaryFile')
- diary('set', 'DiaryFile', filename)
- diary('set', 'Diary', onoff)

## Argument d'entrée

- onoff - une chaîne : 'on' ou 'off'.
- filename - une chaîne : nom de fichier du journal courant.

## Argument de sortie

- onoff - une chaîne : 'on' ou 'off'.
- filename - une chaîne : nom de fichier à utiliser pour le journal.

## Description

<p>
            diary crée un journal des entrées clavier et du texte de sortie résultant.</p>

<p>
                diary active ou désactive le mode journal.</p>

<p>
                    diary('off') arrête l'enregistrement de la session dans le fichier journal.</p>

<p>
                        diary('on') commence l'enregistrement d'une session dans un fichier nommé 'diary' dans le répertoire de travail courant.</p>

<p>
                            diary('set', 'Diary', onoff) permet de démarrer ou d'arrêter le journal.</p>

<p>
                                onoff = diary('get', 'Diary') renvoie l'état 'on' ou 'off' du journal.</p>

<p>
                                    diary(filename) enregistre la session dans le fichier nommé filename.</p>

<p>
                                        filename = diary('get', 'DiaryFile') renvoie le nom de fichier utilisé pour le journal.</p>

<p>
                                            diary('set', 'DiaryFile', filename)) définit le nom de fichier pour le journal.</p>

## Exemple

```matlab
filename = diary('get', 'DiaryFile')
onoff = diary('get', 'Diary')
```

## Voir aussi

[history](../history_manager/history.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
