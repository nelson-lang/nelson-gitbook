#import "nelson_help.typ": *

= nelson help reference <help_tools:1_nelson_help_reference>

How to write help XML files for Nelson (elements, attributes, examples, tips).

This document is the canonical authoring reference for help XML files used by Nelson. It explains the structure required by#raw("nelson_help.xsd");and how#raw("nelson_html.xslt");transforms each element into HTML. Use this file as a template and checklist when creating or reviewing documentation pages.


== Syntax

- #raw("`<xmldoc>` (root) - REQUIRED child: `<language>`");
- #raw("Header: `<title>`, `<language>`, `<module_name>`, `<chapter>`, `<short_description>`");
- #raw("Sections: `<syntax>`, `<param_input>`, `<param_output>`, `<description>`, `<examples>`, `<see_also>`, `<history>`, `<authors>`, `<bibliography>`");

== Input argument

/ language: Locale used by the XSLT to select labels and localized text. Examples:#raw("en_US");,#raw("fr_FR");. This element is required on the root#raw("`<xmldoc>`");.


/ keyword: Main identifier shown as the page title by the XSLT. If absent, the XSLT falls back to#raw("`<chapter>`");or "Documentation".



== Output argument

/ html: The XSLT generates an HTML file using local assets:#raw("highlight.css");,#raw("nelson_common.css");and#raw("nelson_help.js");. Images are copied via the extension#raw("ext:copy_img");.



== Description

A human-readable reference and definitive example set describing the XML help file format defined by#raw("nelson_help.xsd");, and how#raw("nelson_html.xslt");transforms its elements into HTML.

 Use#raw("`<description>`");to provide the main documentation body. It accepts paragraphs (#raw("`<p>`");), lists (#raw("`<ul>`");,#raw("`<ol>`");), tables (#raw("`<table>`");), inline markup (#raw("`<b>`");,#raw("`<i>`");,#raw("`<code>`");), images (#raw("`<img src=\"...\"/>`");) and LaTeX (#raw("`<latex>`");).

 Inline elements and their XSLT rendering:

 

- #strong[\`\<b\>\`]; - bold text.
- #strong[\`\<i\>\`]; - italic text.
- #strong[\`\<code\>\`]; - inline code rendering.
- #strong[\`\<a href\="..." \>\`]; - external links (rendered as HTML anchors).
- #strong[\`\<link linkend\="..." \>\`]; - internal cross reference. If linkend contains a module in braces#raw("{module}name");it becomes#raw("../module/name.html");, otherwise#raw("name.html");.
- #strong[\`\<latex\>\`]; - math expressions; rendered as MathJax display math by the XSLT template (wrapped with#raw("`$$...$$`");).
- #strong[\`\<img src\="..."\/\>\`]; - images. XSLT calls#raw("ext:copy_img(@src)");; SVGs are rendered with a large fixed frame and other formats are responsive. Block elements:

 

- #raw("`<ul>`");and#raw("`<ol>`");- lists. Use#raw("`<li>`");with nested inline\/block markup as needed.
- #raw("`<table>`");- use#raw("`<thead>`");,#raw("`<tbody>`");,#raw("`<tr>`");,#raw("`<th>`");and#raw("`<td>`");. The XSD allows common attributes#raw("border");,#raw("cellpadding");and#raw("cellspacing");. Authoring tips:

 

+ Prefer short summary lines for#raw("`<short_description>`");.
+ Place runnable examples inside#raw("`<examples>`");using#raw("`<example_item_data>`");and set#raw("`runnable=\"cli\"`");if applicable or#raw("`runnable=\"false\"`");(default).
+ Wrap example source in CDATA to avoid escaping (see examples below).
+ Use#raw("`<link linkend=\"{module}name\"\n          >`");for module-qualified references; otherwise use plain names. #strong[Subchapter support]; - Nelson's help system supports nested subchapters. To add one:

 

+ Create a subdirectory under your module help XML folder (for example #raw("plots");).
+ In that directory add a \`chapter.xml\` file containing at least #raw("`<language>`"); and #raw("`<chapter>`");, and an optional #raw("`<chapter_description>`");.
+ Place topic XML files (for example #raw("mesh.xml");) inside the subdirectory; topic files use the usual elements such as #raw("`<keyword>`"); and #raw("`<short_description>`");.
+ Link to nested pages using slash-separated paths: same-module links use #raw("`<link linkend=\"plots/mesh\"\n          >mesh</link>`");, cross-module links use #raw("`<link linkend=\"{module}plots/mesh\"\n          >mesh</link>`");. The #raw("buildhelp"); tool and XSLT resolve these paths and will generate nested HTML pages (for example #raw("plots/mesh.html");).


== Bibliography

https:\/\/github.com\/nelson-lang\/nelson\/blob\/master\/modules\/help\_tools\/help\/en\_US\/xml\/1\_nelson\_help\_reference.xml

== Examples

Minimal runnable example

``````matlab

% Simple one-line example
x = rand(1,10);
[y, info] = myfunc(x);
disp(info);
      
``````

Subchapter example (chapter.xml)

``````matlab
<?xml version="1.0" encoding="UTF-8"?>
<xmldoc>
  <language>en_US</language>
  <chapter>Plots</chapter>
  <chapter_description>
    <p>Plotting functions grouped in a subchapter.</p>
  </chapter_description>
</xmldoc>

``````

Example with image output

``````matlab

% Generate a plot and save as SVG
x = 0:0.1:2*pi;
y = sin(x);
plot(x,y);
saveas(gcf(), [tempdir(),'example_plot.svg']);
      
``````


#align(center)[#image("example_plot.svg", alt: "Example plot")]

== See also

#nlink(<help_tools:doc>)[doc];, #nlink(<graphics:1_plots.1_line_plots.plot>)[plot (graphics module)];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.15.0], [initial version],
  [1.17.0], [added subchapter support],
)

// Author: Allan CORNET
