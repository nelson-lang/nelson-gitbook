# uicontrol

Créer un composant d'interface utilisateur.

## Syntaxe

- c = uicontrol()
- c = uicontrol(propertyName, propertyValue)
- c = uicontrol(parent)
- c = uicontrol(parent, propertyName, propertyValue, ...)
- uicontrol(c)

## Argument d'entrée

- parent - Objet graphique de type figure.
- propertyName - Nom de la propriété : une chaîne scalaire ou un vecteur ligne de caractères.
- propertyValue - Valeur de la propriété : une valeur compatible avec le nom de la propriété.
- c - Un objet de contrôle d'interface utilisateur.

## Argument de sortie

- c - Un objet de contrôle d'interface utilisateur.

## Description

<p>
            c = uicontrol crée un bouton poussoir, qui est le contrôle d'interface utilisateur par défaut, dans la figure actuelle et retourne l'objet uicontrol associé. Si aucune figure n'est actuellement ouverte, Nelson en génère une à l'aide de la fonction figure.</p>

<p>
            c = uicontrol(propertyName, propertyValue) crée un contrôle d'interface utilisateur avec des propriétés définies par un ou plusieurs arguments nom-valeur. Par exemple, spécifier 'Style', 'button' créera un bouton.</p>

<p>
            c = uicontrol(parent) crée le contrôle d'interface utilisateur par défaut (bouton poussoir) dans le conteneur parent spécifié, au lieu de se baser sur la figure actuelle.</p>

<p>
            c = uicontrol(parent, propertyName, propertyValue) crée un contrôle d'interface utilisateur dans le conteneur parent spécifié, permettant de définir ses propriétés à l'aide d'un ou plusieurs arguments nom-valeur.</p>

<p>
            uicontrol(c) met le focus sur un contrôle d'interface utilisateur précédemment défini, le plaçant au premier plan pour l'interaction utilisateur.</p>

<p></p>

<p>Liste des propriétés :</p>

<p></p>

<p>
            BackgroundColor : Couleur de l'arrière-plan, spécifiée comme un triplet RGB, un code couleur hexadécimal ou un nom de couleur valide.</p>

<p>
            BeingDeleted : Statut de suppression. Valeur logique on/off.</p>

<p>
            BusyAction : Mise en file d'attente des callbacks spécifiée comme 'queue' (par défaut) ou 'cancel'. Cette propriété détermine comment Nelson gère l'exécution des callbacks interrompus.</p>

<p>
            ButtonDownFcn : Fonction de callback pour l'appui sur un bouton.</p>

<p>
            CData : Une icône optionnelle peut être spécifiée comme un tableau 3D de valeurs RGB en vraies couleurs. Les valeurs du tableau peuvent être : des nombres en double précision allant de 0.0 à 1.0, ou des nombres uint8 allant de 0 à 255.</p>

<p>
            Callback : Fonction de callback principale : '' (par défaut), handle de fonction, tableau de cellules ou vecteur de caractères.</p>

<p>
            Children : Enfants de l'UIControl : tableau vide.</p>

<p>
            CreateFcn : Fonction de création du composant.</p>

<p>
            DeleteFcn : Fonction de suppression du composant.</p>

<p>
            Enable : État opérationnel du contrôle d'interface utilisateur.</p>

<p>
            FontAngle : Angle de la police : 'italic' ou 'normal' (par défaut).</p>

<p>
            FontName : Nom de la police : nom de police pris en charge par le système.</p>

<p>
            FontSize : Taille de la police : nombre positif.</p>

<p>
            FontUnits : Unités de la police : 'normalized', 'inches', 'centimeters', 'pixels' ou 'points' (par défaut).</p>

<p>
            FontWeight : Épaisseur de la police : 'bold' ou 'normal' (par défaut).</p>

<p>
            ForeGround : Couleur du texte, spécifiée comme un triplet RGB, un code couleur hexadécimal ou un nom de couleur valide.</p>

<p>
            HandleVisibility : Visibilité du handle de l'UIControl.</p>

<p>
            HorizontalAlignment : Alignement du texte de l'uicontrol : 'left', 'right' ou 'center' (par défaut).</p>

<p>
            Interruptible : Interruption des callbacks : 'on' (par défaut).</p>

<p>
            KeyPressFcn : Fonction de callback pour l'appui sur une touche.</p>

<p>
            KeyReleaseFcn : Fonction de callback pour le relâchement d'une touche.</p>

<p>
            ListboxTop : Index de l'élément supérieur dans la liste : valeur entière ou 1 (par défaut).</p>

<p>
            Max : Valeur maximale : nombre ou 1 (par défaut).</p>

<p>
            Min : Valeur minimale : nombre ou 0 (par défaut).</p>

<p>
            Parent : Objet parent : Figure.</p>

<p>
            Position : Emplacement et taille : [gauche bas largeur hauteur].</p>

<p>
            SliderStep : Taille des étapes du curseur : [minorstep majorstep] ou [0.01 0.10] (par défaut).</p>

<p>
            String : Texte à afficher : vecteur de caractères, tableau de cellules de vecteurs de caractères ou tableau de chaînes.</p>

<p>
            Style : 'pushbutton' (par défaut), 'togglebutton', 'checkbox', 'radiobutton', 'edit', 'text', 'slider'.</p>

<p>
            Tooltip : Infobulle : vecteur de caractères ou chaîne scalaire.</p>

<p>
            Type : 'uicontrol'</p>

<p>
            Units : Unités de mesure : 'pixels' (par défaut), 'normalized', 'centimeters', 'inches' ou 'points'.</p>

<p>
            UserData : Tableau de données utilisateur ou [] (par défaut).</p>

<p>
            Value : Valeur actuelle : nombre</p>

<p>
            Visible : État de visibilité : 'on' (par défaut).</p>

## Exemples

Bouton poussoir

```matlab

f = figure;
b = uicontrol(f,'Style','pushbutton', 'String', 'Cliquez-moi', 'Position', [100 100 60 30], 'Callback', 'disp(''Bonjour tout le monde!'')')

```

<img src="uicontrol_1.png" align="middle"/>
Case à cocher

```matlab

f = figure();
h = uicontrol('Style', 'checkbox', 'String', 'Cliquez-moi!', 'Position', [100, 100, 100, 50]);

```

<img src="uicontrol_2.png" align="middle"/>
Édition

```matlab

f = figure();
h = uicontrol('Style', 'edit', 'String', 'Cliquez-moi!', 'Position', [100, 100, 100, 50]);

```

<img src="uicontrol_3.png" align="middle"/>
Image

```matlab

hFig = figure('Position', [100, 100, 300, 300]);
imgSize = 50;  % Taille de l'image
[X, Y] = meshgrid(1:imgSize, 1:imgSize);
CData = cat(3, X/imgSize, Y/imgSize, zeros(imgSize));
CData = im2double(CData);  % S'assurer que l'image est de type double
hButton = uicontrol('Style', 'pushbutton',  'Position', [100, 100, 100, 100], 'CData', CData, 'String', 'Cliquez-moi!');

```

<img src="uicontrol_4.png" align="middle"/>
Démo uicontrol

```matlab

addpath([modulepath('graphics','root'), '/examples/uicontrol'])
edit uicontrol_demo
uicontrol_demo

```

<img src="uicontrol_5.png" align="middle"/>
Démo uicontrol Interruptible

```matlab

addpath([modulepath('graphics','root'), '/examples/uicontrol'])
edit uicontrol_demo_interruptible
uicontrol_demo_interruptible

```

<img src="uicontrol_6.png" align="middle"/>

## Voir aussi

[figure](../graphics/figure.md), [Gérer les interruptions de callback dans Nelson](../graphics/graphical_callback.md).

## Historique

| Version | Description             |
| ------- | ----------------------- |
| 1.7.0   | Version initiale        |
| 1.14.0  | Propriété Units ajoutée |

## Auteur

Allan CORNET
