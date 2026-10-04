# timerfindall

Trouver tous les objets timer qui correspondent a des criteres de proprietes, y compris les timers caches.

## 📝 Syntaxe

- out = timerfindall()
- out = timerfindall('PropertyName', PropertyValue, ...)
- out = timerfindall(t, 'PropertyName', PropertyValue, ...)
- out = timerfindall(values)

## 📥 Argument d'entrée

- t - Tableau d'objets timer utilise comme source de recherche.
- PropertyName, PropertyValue - Criteres de proprietes. Les timers retournes doivent correspondre a toutes les valeurs demandees.
- values - Structure scalaire dont les champs contiennent les criteres de proprietes.

## 📤 Argument de sortie

- out - Tableau d'objets timer correspondants, y compris les objets dont la propriete <b>ObjectVisibility</b> vaut <b>off</b>.

## 📄 Description

<b>timerfindall</b> retourne les objets timer qui correspondent a tous les criteres de proprietes specifies. Contrairement a <b>timerfind</b>, elle inclut les timers caches.

Elle peut aussi retourner les objets timer dont la variable d'origine est sortie de portee, jusqu'a leur suppression.

## 💡 Exemples

Trouver un timer cache par tag.

```matlab
t = timer('ObjectVisibility', 'off', ...
  'Tag', 'demo-hidden', ...
  'TimerFcn', @(src, event) disp('hidden'));
visibleOnly = timerfind('Tag', 'demo-hidden')
includingHidden = timerfindall('Tag', 'demo-hidden')
delete(t);
```

Utiliser une structure de criteres.

```matlab
t = timer('Name', 'criteriaTimer', ...
  'Tag', 'criteria', ...
  'TimerFcn', @(src, event) disp('criteria'));
criteria = struct('Name', 'criteriaTimer', 'Tag', 'criteria');
found = timerfindall(criteria)
delete(t);
```

## 🔗 Voir aussi

[timer](../../time/timer.md), [timerfind](../../time/timerfind.md), [get](../../time/timer.get.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
