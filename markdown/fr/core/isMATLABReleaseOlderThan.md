# isMATLABReleaseOlderThan

Compare la version courante à une version MATLAB.

## 📝 Syntaxe

- tf = isMATLABReleaseOlderThan(release)
- tf = isMATLABReleaseOlderThan(release, 'update', n)

## 📥 Argument d'entrée

- release - un nom de version de la forme <b>'RYYYYa'</b> ou <b>'RYYYYb'</b>, par exemple <b>'R2023b'</b>.
- n - un entier positif ou nul : numéro de mise à jour.

## 📤 Argument de sortie

- tf - un logique : <b>true</b> si la version courante est plus ancienne que celle demandée.

## 📄 Description


<b>tf = isMATLABReleaseOlderThan(release)</b> compare la version courante à <b>release</b>. 

Nelson émule une version récente ; les tests contre des versions plus anciennes valent donc <b>false</b> et le code de compatibilité emprunte son chemin actuel.

## 💡 Exemple



```matlab
tf = isMATLABReleaseOlderThan('R2020b')
```


## 🔗 Voir aussi

[verLessThan](../core/verLessThan.md), [ver](../core/ver.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
