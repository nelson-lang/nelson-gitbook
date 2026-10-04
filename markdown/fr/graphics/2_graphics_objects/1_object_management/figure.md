# figure

Crée une fenêtre figure.

## 📝 Syntaxe

- f = figure()
- f = figure(ID)
- f = figure(H)
- f = figure(propertyName, propertyValue)
- f = figure(ID, propertyName, propertyValue)
- f = figure(H, propertyName, propertyValue)

## 📥 Argument d'entrée

- ID - Un entier scalaire : recherche ou crée avec cet ID.
- H - Un objet graphique scalaire sur une figure existante.
- propertyName - Une chaîne scalaire ou un vecteur ligne de caractères.
- propertyValue - Une valeur.

## 📤 Argument de sortie

- f - Un objet graphique : handle de figure.

## 📄 Description

<b>figure</b> crée une figure.

Un clic sur une figure la définit automatiquement comme figure courante.

Voir [proprietes de figure](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.figure.properties.md) pour la liste complete des proprietes.

## 💡 Exemple

```matlab
f = figure(1)
g = figure(2)
h = figure(3)
figure(g)
gcf()
figure('Name', 'Hello')

```

## 🔗 Voir aussi

[proprietes de figure](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.figure.properties.md), [gcf](../../../graphics/2_graphics_objects/1_object_management/gcf.md), [close](../../../graphics/2_graphics_objects/1_object_management/close.md).

## 🕔 Historique

| Version | 📄 Description                                                                                        |
| ------- | ----------------------------------------------------------------------------------------------------- |
| 1.0.0   | version initiale                                                                                      |
| 1.2.0   | Un clic sur une figure la définit automatiquement comme figure courante.                              |
| 1.7.0   | Ajout des callbacks CreateFcn, DeleteFcn, CloseRequestFcn, KeyPressFcn, KeyReleaseFcn, ButtonDownFcn. |
| --      | Ajout de la propriété BeingDeleted.                                                                   |
| 1.8.0   | Ajout de la propriété Resize.                                                                         |
| 1.13.0  | Ajout de la propriété DevicePixelRatio.                                                               |
| 1.14.0  | Ajout de la propriété WindowState.                                                                    |
| --      | Mise a jour de la documentation des proprietes de figure.                                             |

<!--
## 👤 Auteur

Allan CORNET
-->
