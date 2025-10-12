# groot

Objet racine graphique.

## Syntaxe

- g = groot()

## Argument de sortie

- g - Un objet graphique : objet racine.

## Description

<p>
            groot retourne l'objet racine graphique.</p>

<p>Propriétés :</p>

<p>
            Children : Tableau des objets figure disponibles.</p>

<p>
            CurrentFigure : Objet graphique figure courant.</p>

<p>
            Parent : tableau vide (pas de parent)</p>

<p>
            PointerLocation : Position actuelle du pointeur.</p>

<p>
            ScreenDepth : Nombre de bits définissant chaque couleur de pixel.</p>

<p>
            ScreenSize : Taille de l'écran principal (vecteur).</p>

<p>
            Tag : Identifiant de l'objet : chaîne, vecteur de caractères, '' (par défaut).</p>

<p>
            Type : Type 'root'.</p>

<p>
            Units : 'pixels'.</p>

<p>
            UserData : Données utilisateur : tableau ou [] (par défaut).</p>

## Exemple

```matlab
g = groot()
g.ScreenDepth
```

## Voir aussi

[figure](../graphics/figure.md), [gcf](../graphics/gcf.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
