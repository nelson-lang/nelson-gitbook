# uihtml

Cree un composant HTML.

## 📝 Syntaxe

- h = uihtml()
- h = uihtml(parent)
- h = uihtml(..., nomPropriete, valeurPropriete)

## 📥 Argument d'entrée

- parent - objet parent.
- nomPropriete, valeurPropriete - paires nom-valeur.

## 📤 Argument de sortie

- h - objet graphique.

## 📄 Description


<b>h = uihtml()</b> cree un composant qui affiche une page HTML dans une figure et echange des donnees avec elle. 

<b>uihtml necessite le bureau WebView.</b> Ailleurs, il leve <b>Nelson:uihtml:webviewDesktopRequired</b>, car aucune page ne peut y etre affichee. Demarrez le bureau WebView pour l'utiliser. 

<b>HTMLSource</b> accepte deux formes : du balisage HTML, ou le nom d'un fichier HTML (relatif ou absolu). La valeur est conservee telle quelle. Une URL n'est pas acceptee. 

La page doit definir une fonction globale <b>setup</b> prenant un argument. Elle s'execute une fois le contenu charge, puis a chaque fois que <b>HTMLSource</b> prend une valeur differente. Reaffecter la meme valeur ne change rien. 

L'objet passe a <b>setup</b> porte la propriete <b>Data</b>, les methodes <b>addEventListener</b> et <b>removeEventListener</b>, et la methode <b>sendEventToNelson(nom, donnees)</b>. Les pages ecrites pour d'autres environnements nomment cette derniere methode autrement et doivent etre modifiees. 

La notification est asymetrique. Ecrire <b>Data</b> depuis Nelson leve l'evenement <b>DataChanged</b> dans la page et n'execute <b>pas</b> <b>DataChangedFcn</b>. L'ecrire depuis la page execute <b>DataChangedFcn</b>, dont l'evenement porte <b>Data</b> et <b>PreviousData</b>, et n'est pas renvoyee vers la page. Ecrire une valeur egale a la valeur courante ne notifie personne. 

<b>Data</b> transite en JSON dans les deux sens : une valeur revient donc telle que <b>jsonencode</b> puis <b>jsondecode</b> la laissent. Les entiers reviennent en double, les vecteurs ligne reviennent en colonne, <b>datetime</b> et <b>categorical</b> reviennent en texte, et les valeurs complexes ne peuvent pas etre transmises. 

<b>sendEventToHTMLSource</b> envoie un evenement nomme a la page, que celle-ci recoit via <b>addEventListener</b>. Un evenement de la page parvient a Nelson via <b>HTMLEventReceivedFcn</b>, dont l'evenement porte <b>HTMLEventName</b> et <b>HTMLEventData</b>. Les evenements de la page sont delivres dans l'ordre ou elle les a envoyes. 

La page conserve son etat lorsqu'elle est masquee, lorsque son onglet n'est pas selectionne, et lors d'un changement de parent au sein du bureau. Deplacer une figure entre sa propre fenetre et le bureau docke n'en fait pas partie : la page change de document, elle est reconstruite et <b>setup</b> s'execute a nouveau. 

Ecrivez une page capable de se reconstruire. <b>Data</b> conserve sa valeur au travers d'une telle reconstruction : lisez-la dans <b>setup</b> et affichez a partir d'elle, plutot que d'attendre <b>DataChanged</b>, une notification qu'une page neuve a deja manquee. Une page qui n'affiche que sur <b>DataChanged</b> revient vide, et rejouer la poignee de main ne la sauve pas : ecrire la valeur deja publiee ne notifie personne.

## 💡 Exemple

une page qui lit Data et repond par un evenement

```matlab

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

```


## 🔗 Voir aussi

[uifigure](../../../gui/uifigure.md), [jsonencode](../../../json/jsonencode.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
