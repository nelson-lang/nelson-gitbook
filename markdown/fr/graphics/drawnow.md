# drawnow

Met à jour les figures et traite les callbacks

## 📝 Syntaxe

- drawnow()

## 📄 Description

<b>drawnow</b> vide la file d'attente des événements et met à jour la fenêtre de la figure.

## 💡 Exemple

```matlab
x = -pi:pi/20:pi;
plot(x, cos(x))
drawnow
title('Title Here ...')
grid on
```

## 🔗 Voir aussi

[refresh](../graphics/refresh.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
