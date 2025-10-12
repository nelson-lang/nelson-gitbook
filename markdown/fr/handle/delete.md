# delete

supprime des objets handle.

## Syntaxe

- delete(h)

## Argument d'entrée

- h - un objet handle : scalaire ou matrice.

## Description

<p>delete(h) supprime de la mémoire les objets handle référencés par h.</p>

<p>Une fois supprimées, toutes les références aux objets contenus dans h deviennent invalides.</p>

<p>Pour supprimer les variables handle, utilisez la fonction clear.</p>

<p>Voir la fonction clear pour savoir comment forcer la suppression.</p>

## Exemple

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

## Voir aussi

[clear](../memory_manager/clear.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
