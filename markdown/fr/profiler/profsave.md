# profsave

Enregistrer les résultats du profilage au format HTML.

## Syntaxe

- profsave
- profsave(profile_info)
- profsave(profile_info, dirname)

## Argument d'entrée

- profile_info - structure : résultat de profile('info')
- dirname - chaîne : répertoire de destination.

## Description

<p>profsave exporte les données de profiling en une série de fichiers HTML.</p>

<p>L'argument profile_info est la structure renvoyée par profile('info').</p>

<p>Si non précisé, profsave utilisera le profil courant.</p>

## Exemple

```matlab
profile on
sind(5)
profile off
profsave(profile('info'), [tempdir(), 'profile_results'])
unix([tempdir(), 'profile_results/index.html'])

```

## Voir aussi

[profile](../profiler/profile.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
