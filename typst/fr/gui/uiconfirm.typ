#import "nelson_help.typ": *

= uiconfirm <gui:uiconfirm>

Affiche une boite de confirmation pour une figure UI.

== Syntaxe

- #raw("selection = uiconfirm(parent, message, title)");
- #raw("selection = uiconfirm(parent, message, title, Name, Value)");

== Argument d'entrée

/ parent: Handle de figure UI parent, generalement cree avec uifigure.
/ message: Texte de la question affichee dans la boite de confirmation.
/ title: Titre de la boite de dialogue.
/ Name, Value: Paires optionnelles. 'Options' definit les libelles des boutons. 'DefaultOption' definit l'option selectionnee initialement.

== Argument de sortie

/ selection: Texte de l'option selectionnee, ou vecteur de caracteres vide si la boite est fermee.

== Description

uiconfirm affiche une boite de confirmation et retourne le texte du bouton selectionne.


== Exemples

Apercu rendu pour l'image d'aide.

``````matlab
f = figure('Name', 'Confirm preview', 'Position', [100 100 420 260], 'Color', [1 1 1]);
axis([0 1 0 1]); axis off; hold on;
patch([0.06 0.94 0.94 0.06], [0.12 0.12 0.88 0.88], [0.97 0.98 0.99], 'EdgeColor', [0.62 0.65 0.68]);

text(0.16, 0.78, 'Confirm', 'FontSize', 12, 'FontWeight', 'bold');
text(0.24, 0.56, 'Save changes before closing?', 'FontSize', 11);
patch([0.28 0.44 0.44 0.28], [0.25 0.25 0.36 0.36], [0.90 0.94 1.00], 'EdgeColor', [0.25 0.45 0.75]);
patch([0.54 0.70 0.70 0.54], [0.25 0.25 0.36 0.36], [0.95 0.95 0.95], 'EdgeColor', [0.55 0.55 0.55]);
text(0.36, 0.30, 'Yes', 'HorizontalAlignment', 'center', 'FontSize', 10);
text(0.62, 0.30, 'No', 'HorizontalAlignment', 'center', 'FontSize', 10);
``````


#align(center)[#image("uiconfirm_example.svg")]
Poser une question de confirmation simple.

``````matlab
f = uifigure('Visible', 'off', 'Name', 'Close');
answer = uiconfirm(f, 'Close the window?', 'Confirm');
close(f);
disp(answer)
``````


== Voir aussi

#nlink(<gui:uialert>)[uialert];, #nlink(<gui:questdlg>)[questdlg];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version aide API dialogue mise a jour.],
)

// Auteur: Allan CORNET
