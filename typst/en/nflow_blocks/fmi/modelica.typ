#import "../nelson_help.typ": *

= modelica <nflow_blocks:fmi.modelica>


#block-icon(image("modelica.svg"))

Compiles a Modelica model and uses it as an NFlow block.

== Syntax

- #raw("Block type: modelica");

== Description

The #strong[Modelica]; block references inline #strong[source]; or a Modelica #strong[file];, and selects #strong[modelName];. Before simulation, NFlow compiles the model to an FMU.

 A working OpenModelica installation is required. Compilation and model errors are reported in Diagnostics.

 
== See also

#nlink(<nflow_fmi:modelicaToFmu>)[modelicaToFmu];.
