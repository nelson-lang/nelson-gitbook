# consolebox

Affiche ou masque le terminal Windows associé à la session Nelson.

## 📝 Syntaxe

- consolebox(visibility)
- consolebox('toggle')
- status = consolebox('status')

## 📥 Argument d'entrée

- visibility - un logique : true pour afficher la console, false pour la masquer

## 📤 Argument de sortie

- status - un logique : true si la console est visible, false sinon

## 📄 Description

Affiche ou masque le terminal Windows associé à la session Nelson.

Chaque session Nelson s'exécute dans sa propre console. Lorsque la session Nelson se termine, sa console correspondante est automatiquement terminée.

La console est une fenêtre de terminal noire qui ne peut pas être fermée manuellement — le bouton de fermeture (“X”) dans le coin supérieur droit est désactivé. Forcer sa fermeture mettra également fin à la session Nelson.

Certaines fonctions Nelson de bas niveau (et certaines bibliothèques externes) envoient leurs messages directement à la console.

Comme ces messages pourraient encombrer la console principale de Nelson, ils ne sont pas affichés là-bas.

Activer la console avec consolebox on vous permet de voir ces messages, ce qui peut être très utile pour le débogage.

## 💡 Exemple

```matlab
consolebox(true)
pause(10)
consolebox('toggle')
pause(10)
consolebox(false)
```

## 🔗 Voir aussi

[clc](../console/clc.md).

## 🕔 Historique

| Version | 📄 Description  |
| ------- | --------------- |
| 1.15.0  | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
