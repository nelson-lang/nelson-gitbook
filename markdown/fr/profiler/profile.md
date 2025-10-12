# profile

Profiler le temps d'exécution des fonctions Macro.

## Syntaxe

- profile on
- profile off
- profile resume
- profile clear
- status = profile('status')
- p = profile('info')
- profile('show', sortOption)
- profile('show', sortOption, nbLines)

## Argument d'entrée

- sortOption - chaîne : 'nfl' (par nom fichier ligne), 'line' (par ligne), 'percalls', 'totaltime', 'filename', 'function' ou 'nbcalls'.
- nbLines - entier : nombre de lignes à afficher.

## Description

<p>Le profiling permet de mesurer où les fonctions Macro passent leur temps d'exécution.</p>

<p>s = profile('status') renvoie une structure contenant le statut courant du profiler.</p>

<p>p = profile('info') renvoie une structure contenant les données de profiling collectées.</p>

<p>profile('on') démarre le profiler.</p>

<p>profile('off') arrête le profiler. Les données collectées pourront être récupérées ultérieurement avec p = profile('info').</p>

<p>profile('clear') efface les données collectées.</p>

<p>profile('resume') redémarre et prolonge la collecte des données déjà recueillies.</p>

## Exemples

```matlab
profile on
sind(5)
profile off
profile('show')
profile('show', 'totaltime')
profile('show', 'totaltime', 4)

```

```matlab
profile on
sind(5)
profile off
profsave(profile('info'), [tempdir(), 'profile_results'])
unix([tempdir(), 'profile_results/index.html'])

```

## Voir aussi

[profsave](../profiler/profsave.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
