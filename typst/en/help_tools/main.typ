#import "nelson_help.typ": *

= Documentation and Help Management

The Help Tools module provides functions to create, convert, and manage documentation for Nelson.

 It generates help content in formats such as HTML, Markdown, PDF, and website-ready output for maintaining and distributing documentation.

== Functions

- #nlink(<help_tools:1_nelson_help_reference>)[nelson help reference]: How to write help XML files for Nelson (elements, attributes, examples, tips).
- #nlink(<help_tools:buildhelp>)[buildhelp]: Build help of Nelson's modules.
- #nlink(<help_tools:buildhelpjson>)[buildhelpjson]: Build help of Nelson JSON format.
- #nlink(<help_tools:buildhelpmd>)[buildhelpmd]: Build help of Nelson's modules for GitBook.
- #nlink(<help_tools:buildhelptypst>)[buildhelptypst]: Build help of Nelson's modules as Typst sources.
- #nlink(<help_tools:buildhelpweb>)[buildhelpweb]: Build help of Nelson's modules for website.
- #nlink(<help_tools:deployhelp>)[deployhelp]: Install, uninstall and manage the local Nelson help system and module help files.
- #nlink(<help_tools:doc>)[doc]: Displays documentation.
- #nlink(<help_tools:docroot>)[docroot]: Retrieve or update the root directory for Nelson Help system.
- #nlink(<help_tools:headcomments>)[headcomments]: Display Nelson function header comments.
- #nlink(<help_tools:help>)[help]: Help for functions in Command Window.
- #nlink(<help_tools:htmltopdf>)[htmltopdf]: Convers html page to pdf.
- #nlink(<help_tools:markdown>)[markdown]: Converts markdown to html.
- #nlink(<help_tools:markdowndisp>)[markdowndisp]: Display rendered Markdown text.
- #nlink(<help_tools:xmldocbuild>)[xmldocbuild]: Internal function to convert xml document files to html.
- #nlink(<help_tools:xmldocchecker>)[xmldocchecker]: Checks a xml documentation file.
- #nlink(<help_tools:xmldoclinkchecker>)[xmldoclinkchecker]: Checks unresolved cross-references in Nelson help XML files.
- #nlink(<help_tools:xmldocrenderimages>)[xmldocrenderimages]: Render the example images of Nelson help files.
- #nlink(<help_tools:xmldoctohtml>)[xmldoctohtml]: Converts xml Nelson help files to html.
- #nlink(<help_tools:xmldoctomd>)[xmldoctomd]: Converts xml Nelson help files to markdown format.
- #nlink(<help_tools:xmldoctotypst>)[xmldoctotypst]: Converts xml Nelson help files to Typst sources.


#nested[
#pagebreak(weak: true)
#include "1_nelson_help_reference.typ"
#pagebreak(weak: true)
#include "buildhelp.typ"
#pagebreak(weak: true)
#include "buildhelpjson.typ"
#pagebreak(weak: true)
#include "buildhelpmd.typ"
#pagebreak(weak: true)
#include "buildhelptypst.typ"
#pagebreak(weak: true)
#include "buildhelpweb.typ"
#pagebreak(weak: true)
#include "deployhelp.typ"
#pagebreak(weak: true)
#include "doc.typ"
#pagebreak(weak: true)
#include "docroot.typ"
#pagebreak(weak: true)
#include "headcomments.typ"
#pagebreak(weak: true)
#include "help.typ"
#pagebreak(weak: true)
#include "htmltopdf.typ"
#pagebreak(weak: true)
#include "markdown.typ"
#pagebreak(weak: true)
#include "markdowndisp.typ"
#pagebreak(weak: true)
#include "xmldocbuild.typ"
#pagebreak(weak: true)
#include "xmldocchecker.typ"
#pagebreak(weak: true)
#include "xmldoclinkchecker.typ"
#pagebreak(weak: true)
#include "xmldocrenderimages.typ"
#pagebreak(weak: true)
#include "xmldoctohtml.typ"
#pagebreak(weak: true)
#include "xmldoctomd.typ"
#pagebreak(weak: true)
#include "xmldoctotypst.typ"
]
