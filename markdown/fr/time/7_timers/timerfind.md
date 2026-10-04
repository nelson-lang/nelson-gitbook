# timerfind

Trouver les objets timer visibles qui correspondent a des criteres de proprietes.

## 📝 Syntaxe

- out = timerfind()
- out = timerfind('PropertyName', PropertyValue, ...)
- out = timerfind(t, 'PropertyName', PropertyValue, ...)
- out = timerfind(values)

## 📥 Argument d'entrée

- t - Tableau d'objets timer utilise comme source de recherche.
- PropertyName, PropertyValue - Criteres de proprietes. Les timers retournes doivent correspondre a toutes les valeurs demandees.
- values - Structure scalaire dont les champs contiennent les criteres de proprietes.

## 📤 Argument de sortie

- out - Tableau d'objets timer correspondants dont la propriete <b>ObjectVisibility</b> vaut <b>on</b>.

## 📄 Description

<b>timerfind</b> retourne les objets timer visibles qui correspondent a tous les criteres de proprietes specifies. Sans critere, elle retourne tous les timers visibles.

Utilisez <b>timerfindall</b> pour inclure les timers dont la propriete <b>ObjectVisibility</b> vaut <b>off</b>.

## 💡 Exemples

Trouver un timer visible par tag.

```matlab
t = timer('Name', 'visibleTimer', ...
  'Tag', 'demo-visible', ...
  'TimerFcn', @(src, event) disp('visible'));
found = timerfind('Tag', 'demo-visible')
delete(t);
```

Rechercher dans un tableau de timers fourni.

```matlab
t1 = timer('Tag', 'groupA', 'TimerFcn', @(src, event) disp('a'));
t2 = timer('Tag', 'groupB', 'TimerFcn', @(src, event) disp('b'));
found = timerfind([t1 t2], 'Tag', 'groupB')
delete([t1 t2]);
```

## 🔗 Voir aussi

[timer](../../time/timer.md), [timerfindall](../../time/timerfindall.md), [get](../../time/timer.get.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
