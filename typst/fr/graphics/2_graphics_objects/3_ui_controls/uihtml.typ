#import "../../nelson_help.typ": *

= uihtml <graphics:2_graphics_objects.3_ui_controls.uihtml>

Cree un composant HTML.

== Syntaxe

- #raw("h = uihtml()");
- #raw("h = uihtml(parent)");
- #raw("h = uihtml(..., nomPropriete, valeurPropriete)");

== Argument d'entrée

/ parent: objet parent.
/ nomPropriete, valeurPropriete: paires nom-valeur.

== Argument de sortie

/ h: objet graphique.

== Description

#strong[h \= uihtml()]; cree un composant qui affiche une page HTML dans une figure et echange des donnees avec elle.

 #strong[uihtml necessite le bureau WebView.]; Ailleurs, il leve #strong[Nelson:uihtml:webviewDesktopRequired];, car aucune page ne peut y etre affichee. Demarrez le bureau WebView pour l'utiliser.

 #strong[HTMLSource]; accepte deux formes : du balisage HTML, ou le nom d'un fichier HTML (relatif ou absolu). La valeur est conservee telle quelle. Une URL n'est pas acceptee.

 La page doit definir une fonction globale #strong[setup]; prenant un argument. Elle s'execute une fois le contenu charge, puis a chaque fois que #strong[HTMLSource]; prend une valeur differente. Reaffecter la meme valeur ne change rien.

 L'objet passe a #strong[setup]; porte la propriete #strong[Data];, les methodes #strong[addEventListener]; et #strong[removeEventListener];, et la methode #strong[sendEventToNelson(nom, donnees)];. Les pages ecrites pour d'autres environnements nomment cette derniere methode autrement et doivent etre modifiees.

 La notification est asymetrique. Ecrire #strong[Data]; depuis Nelson leve l'evenement #strong[DataChanged]; dans la page et n'execute #strong[pas]; #strong[DataChangedFcn];. L'ecrire depuis la page execute #strong[DataChangedFcn];, dont l'evenement porte #strong[Data]; et #strong[PreviousData];, et n'est pas renvoyee vers la page. Ecrire une valeur egale a la valeur courante ne notifie personne.

 #strong[Data]; transite en JSON dans les deux sens : une valeur revient donc telle que #strong[jsonencode]; puis #strong[jsondecode]; la laissent. Les entiers reviennent en double, les vecteurs ligne reviennent en colonne, #strong[datetime]; et #strong[categorical]; reviennent en texte, et les valeurs complexes ne peuvent pas etre transmises.

 #strong[sendEventToHTMLSource]; envoie un evenement nomme a la page, que celle-ci recoit via #strong[addEventListener];. Un evenement de la page parvient a Nelson via #strong[HTMLEventReceivedFcn];, dont l'evenement porte #strong[HTMLEventName]; et #strong[HTMLEventData];. Les evenements de la page sont delivres dans l'ordre ou elle les a envoyes.

 La page conserve son etat lorsqu'elle est masquee, lorsque son onglet n'est pas selectionne, et lors d'un changement de parent au sein du bureau. Deplacer une figure entre sa propre fenetre et le bureau docke n'en fait pas partie : la page change de document, elle est reconstruite et #strong[setup]; s'execute a nouveau.

 Ecrivez une page capable de se reconstruire. #strong[Data]; conserve sa valeur au travers d'une telle reconstruction : lisez-la dans #strong[setup]; et affichez a partir d'elle, plutot que d'attendre #strong[DataChanged];, une notification qu'une page neuve a deja manquee. Une page qui n'affiche que sur #strong[DataChanged]; revient vide, et rejouer la poignee de main ne la sauve pas : ecrire la valeur deja publiee ne notifie personne.


== Exemple

une page qui lit Data et repond par un evenement

``````matlab

f = uifigure();
page = ['<html><body><p id="out">waiting</p><script>', ...
  'function setup(h) {', ...
  '  h.addEventListener("DataChanged", function () {', ...
  '    document.getElementById("out").textContent = JSON.stringify(h.Data);', ...
  '  });', ...
  '  h.sendEventToNelson("ready", {});', ...
  '}</script></body></html>'];
h = uihtml(f, 'Position', [10 10 400 200], 'HTMLSource', page);
h.HTMLEventReceivedFcn = @(src, evt) disp(evt.HTMLEventName);
h.Data = struct('temperature', 21.5);

``````


== Voir aussi

#nlink(<gui:uifigure>)[uifigure];, #nlink(<json:jsonencode>)[jsonencode];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
