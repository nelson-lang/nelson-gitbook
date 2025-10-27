# pause

Met l'exécution en pause.

## 📝 Syntaxe

- state = pause()
- pause(t)
- pause(newState)
- previousState = pause(newState)
- currentState = pause('query')

## 📥 Argument d'entrée

- t - t: valeur double. temps (secondes) avant de continuer.
- newState - une chaîne : 'on' (activer la pause) ou 'off' (désactiver la pause)

## 📤 Argument de sortie

- previousState, currentState - une chaîne : 'on' ou 'off'

## 📄 Description

Met l'exécution du script ou de l'environnement en pause pendant une durée donnée ou jusqu'à une action de l'utilisateur.

## 💡 Exemple

un exemple

```matlab
state = pause
echo('appuyez sur retour pour continuer.')
pause
pause('off')
pause
pause('on')
pause(5)
```

## 🔗 Voir aussi

[sleep](../time/sleep.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
