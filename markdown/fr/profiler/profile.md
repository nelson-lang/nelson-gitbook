# profile

Profiler le temps d'exécution des fonctions Macro.

## 📝 Syntaxe

- profile on
- profile off
- profile resume
- profile clear
- status = profile('status')
- p = profile('info')
- profile('show', sortOption)
- profile('show', sortOption, nbLines)

## 📥 Argument d'entrée

- sortOption - chaîne : 'nfl' (par nom fichier ligne), 'line' (par ligne), 'percalls', 'totaltime', 'filename', 'function' ou 'nbcalls'.
- nbLines - entier : nombre de lignes à afficher.

## 📄 Description


Le profiling permet de mesurer où les fonctions Macro passent leur temps d'exécution. 

<b>s = profile('status')</b> renvoie une structure contenant le statut courant du profiler. 

<b>p = profile('info')</b> renvoie une structure contenant les données de profiling collectées. 

<b>profile('on')</b> démarre le profiler. 

<b>profile('off')</b> arrête le profiler. Les données collectées pourront être récupérées ultérieurement avec<b>p = profile('info')</b>. 

<b>profile('clear')</b> efface les données collectées. 

<b>profile('resume')</b> redémarre et prolonge la collecte des données déjà recueillies.

## 💡 Exemples



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


## 🔗 Voir aussi

[profsave](../profiler/profsave.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
