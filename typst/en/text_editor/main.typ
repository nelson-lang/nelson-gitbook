#import "nelson_help.typ": *

= Text editor

The Text Editor module provides an embedded Nelson editor for creating, editing, and formatting Nelson scripts and files.

== Functions

- #nlink(<text_editor:debugging_workflow>)[debugging workflow]: Debugging workflow for Nelson code files in the editor.
- #nlink(<text_editor:edit>)[edit]: function editor.
- #nlink(<text_editor:editor>)[editor]: call the embedded text editor.
- #nlink(<text_editor:opentoline>)[opentoline]: opens a file in the editor at a line.


#nested[
#pagebreak(weak: true)
#include "debugging_workflow.typ"
#pagebreak(weak: true)
#include "edit.typ"
#pagebreak(weak: true)
#include "editor.typ"
#pagebreak(weak: true)
#include "opentoline.typ"
]
