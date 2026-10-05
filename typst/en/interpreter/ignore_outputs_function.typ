#import "nelson_help.typ": *

= tilde <interpreter:ignore_outputs_function>

Ignore outputs function.

== Syntax

- #raw("[~, A, ~] = svd(B)");

== Description

The #strong[tilde]; syntax allows you to ignore specific outputs from functions that return multiple values. By using the tilde symbol (\~) in the output list, you can indicate which outputs you do not wish to capture.

 This is particularly useful when you are only interested in certain results from a function and want to avoid unnecessary variable assignments.

 For example, when using the Singular Value Decomposition (SVD) function, you might only want the singular values and not the left or right singular vectors. You can achieve this by using the tilde symbol to ignore the unwanted outputs.


== Example

in a file: demo\_function.m

``````matlab

      A = rand(4,4);
      [~, S, ~] = svd(A);

``````


== See also

#nlink(<interpreter:function>)[function];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.15.0], [initial version],
)

// Author: Allan CORNET
