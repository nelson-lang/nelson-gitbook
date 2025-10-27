# delete

supprime des objets handle.

## 📝 Syntaxe

- delete(h)

## 📥 Argument d'entrée

- h - un objet handle : scalaire ou matrice.

## 📄 Description

<b>delete(h)</b> supprime de la mémoire les objets handle référencés par h.

Une fois supprimées, toutes les références aux objets contenus dans h deviennent invalides.

Pour supprimer les variables handle, utilisez la fonction [clear](../memory_manager/clear.md).

Voir la fonction clear pour savoir comment forcer la suppression.

## 💡 Exemple

```matlab
f = figure();
ax = gca();
img = image();
hold on
P = plot(magic(5));
children1 = ax.Children;
delete(img);
size(children1)
children2 = ax.Children;
size(children2)
```

## 🔗 Voir aussi

[clear](../memory_manager/clear.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
