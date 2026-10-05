#import "nelson_help.typ": *

= inputParser <validators:inputParser>

Parses and validates function inputs.

== Syntax

- #raw("p = inputParser()");
- #raw("addRequired(p, name)");
- #raw("addRequired(p, name, validator)");
- #raw("addOptional(p, name, defaultValue)");
- #raw("addOptional(p, name, defaultValue, validator)");
- #raw("addParameter(p, name, defaultValue)");
- #raw("addParameter(p, name, defaultValue, validator)");
- #raw("addParamValue(p, name, defaultValue)");
- #raw("addParamValue(p, name, defaultValue, validator)");
- #raw("parse(p, varargin{:})");

== Input argument

/ name: valid identifier used as a field name in the parser results.
/ defaultValue: value used when an optional or parameter input is omitted.
/ validator: function handle called with the candidate value. It can return a scalar logical value or raise an error.
/ varargin: inputs to parse. Positional inputs are matched first, then name-value inputs.

== Output argument

/ p: handle object that stores the input specification and the parse result.

== Description

#strong[inputParser]; defines required, optional, and name-value inputs and stores parsed values in #strong[Results];.

 Required inputs are consumed first and must be present. Optional inputs are consumed after required inputs when the next positional value satisfies their validator and is not recognized as a parameter name. Parameters are specified as name-value pairs and can appear after positional inputs.

 #strong[addParameter]; and #strong[addParamValue]; add name-value parameters. #strong[addParamValue]; is accepted as a compatibility alias.

 The parser scheme is defined with #strong[addRequired];, #strong[addOptional];, #strong[addParameter];, and #strong[addParamValue];. The scheme can be built in any order, but #strong[parse]; consumes required positional inputs first, optional positional inputs next, and name-value inputs last.

 When a name-value parameter is repeated, the last supplied value is kept in #strong[Results];.

 The writable properties are:

 #strong[FunctionName];: text prepended to parser error messages.

 #strong[CaseSensitive];: when false, parameter names are matched without case sensitivity. The default is false.

 #strong[KeepUnmatched];: when true, unrecognized name-value pairs are stored in #strong[Unmatched];. The default is false.

 #strong[PartialMatching];: when true, a unique leading partial parameter name is accepted. The default is true.

 #strong[StructExpand];: when true and #strong[parse]; receives one scalar struct, the struct fields are treated as name-value pairs. The default is true.

 The read-only properties are:

 #strong[Parameters];: names added to the parser in declaration order.

 #strong[Results];: scalar struct containing parsed values and defaults.

 #strong[Unmatched];: scalar struct containing unrecognized name-value pairs when #strong[KeepUnmatched]; is true.

 #strong[UsingDefaults];: cell array of optional and parameter names whose default values were used.


== Examples

Required input and name-value parameter.

``````matlab
p = inputParser();
addRequired(p, 'width', @(x) isnumeric(x) && isscalar(x));
addParameter(p, 'units', 'm', @(x) ischar(x) || isstring(x));
parse(p, 10, 'units', 'cm');
p.Results
``````

Optional input, defaults, and last name-value wins.

``````matlab
p = inputParser();
addRequired(p, 'name', @(x) ischar(x) || isstring(x));
addOptional(p, 'count', 1, @(x) isnumeric(x) && isscalar(x) && x > 0);
addParameter(p, 'mode', 'fast', @(x) validatestring(x, {'fast', 'slow'}));
parse(p, 'job', 'mode', 'slow', 'mode', 'fast');
p.Results
p.UsingDefaults
``````

Struct expansion with unmatched fields.

``````matlab
p = inputParser();
p.KeepUnmatched = true;
addParameter(p, 'width', 1, @(x) isnumeric(x) && isscalar(x));
addParameter(p, 'height', 1, @(x) isnumeric(x) && isscalar(x));
opts.width = 10;
opts.height = 5;
opts.color = 'blue';
parse(p, opts);
p.Results
p.Unmatched
``````


== See also

#nlink(<validators:validateattributes>)[validateattributes];, #nlink(<validators:validatestring>)[validatestring];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
