# Aide Nelson

Comment rédiger des fichiers XML d'aide pour Nelson (éléments, attributs, exemples, conseils).

Ce document est la référence canonique pour la création de fichiers XML d'aide utilisés par Nelson. Il explique la structure requise par <code>nelson_help.xsd</code> et comment <code>nelson_html.xslt</code> transforme chaque élément en HTML. Utilisez ce fichier comme modèle et liste de contrôle lors de la création ou de la révision de pages de documentation.

## 📝 Syntaxe

- `<xmldoc>` (root) - Enfant OBLIGATOIRE : `<language>`
- Header: `<title>`, `<language>`, `<module_name>`, `<chapter>`, `<short_description>`
- Sections: `<syntax>`, `<param_input>`, `<param_output>`, `<description>`, `<examples>`, `<see_also>`, `<history>`, `<authors>`, `<bibliography>`

## 📥 Argument d'entrée

- language -

Localisation utilisée par le XSLT pour sélectionner les étiquettes et le texte localisé. Exemples :<code>en_US</code>,<code>fr_FR</code>. Cet élément est obligatoire dans la racine<code>`<xmldoc>`</code>.

- keyword -

Identifiant principal affiché comme titre de la page par le XSLT. En cas d'absence, le XSLT revient à <code>`<chapter>`</code> ou "Documentation".

## 📤 Argument de sortie

- html -

Le XSLT génère un fichier HTML en utilisant des ressources locales : <code>highlight.css</code>, <code>nelson_common.css</code> et <code>nelson_help.js</code>. Les images sont copiées via l'extension<code>ext:copy_img</code>.

## 📄 Description

Une référence lisible par l'homme et un ensemble d'exemples définitifs décrivant le format de fichier XML d'aide défini par <code>nelson_help.xsd</code>, et comment <code>nelson_html.xslt</code> transforme ses éléments en HTML.

Utilisez <code>`<description>`</code> pour fournir le corps principal de la documentation. Il accepte des paragraphes (<code>`<p>`</code>), des listes (<code>`<ul>`</code>, <code>`<ol>`</code>), des tableaux (<code>`<table>`</code>), des balisages en ligne (<code>`<b>`</code>, <code>`<i>`</code>, <code>`<code>`</code>), des images (<code>`<img src="..."/>`</code>) et LaTeX (<code>`<latex>`</code>).

Les éléments en ligne et leur rendu XSLT :

- <b>`<b>`</b> - texte en gras.
- <b>`<i>`</b> - texte en italique.
- <b>`<code>`</b> - rendu de code en ligne.
- <b>`<a href="...">`</b> - liens externes (rendus en tant qu'ancres HTML).
- <b>`<link linkend="...">`</b> - référence croisée interne. Si linkend contient un module entre accolades<code>{module}name</code>, il devient<code>../module/name.html</code>, sinon<code>name.html</code>.
- <b>`<latex>`</b> - expressions mathématiques ; rendues en tant que mathématiques d'affichage MathJax par le modèle XSLT (enveloppées avec <code>`$$...$$`</code>).
- <b>`<img src="..."/>`</b> - images. Le XSLT appelle <code>ext:copy_img(@src)</code>; les SVG sont rendus avec un cadre fixe large et les autres formats sont adaptables.

Éléments de bloc :

- <code>`<ul>`</code> et <code>`<ol>`</code> - listes. Utilisez <code>`<li>`</code> avec un balisage en ligne/de bloc imbriqué selon les besoins.
- <code>`<table>`</code> - utilisez <code>`<thead>`</code>, <code>`<tbody>`</code>, <code>`<tr>`</code>, <code>`<th>`</code> et <code>`<td>`</code>. Le XSD autorise les attributs communs <code>border</code>, <code>cellpadding</code> et <code>cellspacing</code>.

Conseils pour la rédaction : 2. Préférez des lignes de résumé courtes pour <code>`<short_description>`</code>. 4. Placez les exemples exécutables à l'intérieur de<code>`<examples>`</code>en utilisant<code>`<example_item_data>`</code>et définissez<code>runnable="cli"</code>si applicable ou<code>runnable="false"</code>(par défaut). 6. Enveloppez le code source de l'exemple dans CDATA pour éviter l'échappement (voir les exemples ci-dessous). 8. Utilisez<code>`<link linkend="{module}name">`</code>pour les références qualifiées par module ; sinon, utilisez des noms simples.

## 📚 Bibliographie

https://github.com/nelson-lang/nelson/blob/master/modules/help_tools/help/fr_FR/xml/1_nelson_help_reference.xml

## 💡 Exemples

Exemple minimal exécutable

```matlab

% Exemple simple
x = rand(1,10);
[y, info] = myfunc(x);
disp(info);

```

Exemple avec sortie d'image

```matlab

% Générer un graphique et l'enregistrer au format SVG
x = 0:0.1:2*pi;
y = sin(x);
plot(x,y);
saveas(gcf(), [tempdir(),'example_plot.svg']);

```

<img src="example_plot.svg" align="center"/>

## 🔗 Voir aussi

[doc](../help_tools/doc.md), [plot (module graphique)](../graphics/plot.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.15.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
