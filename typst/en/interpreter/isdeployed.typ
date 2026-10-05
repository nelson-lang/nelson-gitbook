#import "nelson_help.typ": *

= isdeployed <interpreter:isdeployed>

Determine whether code runs in a deployed application.

== Syntax

- #raw("state = isdeployed()");

== Output argument

/ state: Logical scalar.

== Description

#strong[isdeployed]; returns true while executing application code built by #strong[nelsonc];, including graphical callbacks. It returns false in an ordinary Nelson session, even when the compiler module is loaded.

 The result does not depend on an environment variable that application code can modify. Bundled and installed runtime modes share this behavior. This execution-module function does not load the compiler.

 Dependency analysis does not automatically remove conditional branches using this function.


== Example

``````matlab
state = isdeployed()
``````


// Author: Allan CORNET
