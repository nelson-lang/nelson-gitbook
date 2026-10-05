#import "nelson_help.typ": *

= memoize <types:memoize>

Add memoization to a function.

== Syntax

- #raw("mf = memoize(fh)");

== Input argument

/ fh: function handle to memoize.

== Output argument

/ mf: MemoizedFunction object that caches the results of fh.

== Description

#strong[memoize]; returns a MemoizedFunction that caches the outputs of the function handle fh. Calling the returned object with a set of inputs evaluates fh once for those inputs and returns the cached result on later calls with the same inputs. Set the Enabled property to false to bypass the cache, and use clearCache to empty it.


== Example

``````matlab
mf = memoize(@(x) x .^ 2);
y = mf(4)
``````


== See also

#nlink(<function_handle:str2func>)[str2func];, #nlink(<function_handle:func2str>)[func2str];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
