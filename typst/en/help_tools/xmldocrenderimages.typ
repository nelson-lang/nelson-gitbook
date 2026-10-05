#import "nelson_help.typ": *

= xmldocrenderimages <help_tools:xmldocrenderimages>

Render the example images of Nelson help files.

== Syntax

- #raw("xmldocrenderimages()");
- #raw("xmldocrenderimages(module_name)");
- #raw("xmldocrenderimages(module_name, language)");
- #raw("xmldocrenderimages(module_name, language, force)");
- #raw("xmldocrenderimages(module_name, [], force)");
- #raw("xmldocrenderimages([], [], force)");

== Input argument

/ module\_name: a string: module name (module must be loaded). An empty numeric value \[\] selects every module that has help files.
/ language: a string: language of the help files, for example 'en\_US' or 'fr\_FR'. An empty value \[\] selects every available language.
/ force: a logical: when true, every image is rendered again, even one that is already up to date. Default: false.

== Description

#strong[xmldocrenderimages]; runs the examples of the help files that declare an image with #raw("example_item_img"); and #raw("generate=\"true\"");, and saves the resulting figure next to the XML file.

 An image is rendered when it is missing, empty, or older than its XML file. Use #raw("force"); to render it again in every case.

 Each example runs in a separate #raw("nelson-adv-cli"); process with a 120 second timeout, several at a time. A failed example is retried up to five times before an error is raised.

 Without argument, the images of every module are rendered for every available language. The function sets the language of the session while it works and restores it when done.


== Examples

Render the missing or outdated images of one module in the current language set.

``````matlab
xmldocrenderimages('graphics');
``````

Render every image of every module in every language, even the ones already up to date.

``````matlab
xmldocrenderimages([], [], true);
``````


== See also

#nlink(<help_tools:buildhelp>)[buildhelp];, #nlink(<help_tools:xmldocchecker>)[xmldocchecker];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
