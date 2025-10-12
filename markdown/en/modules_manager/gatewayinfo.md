# gatewayinfo

Returns information about an gateway.

## Syntax

- [gateway_name, builtin_list] = gatewayinfo(dyn_lib_path)

## Input argument

- dyn_lib_path - a string: path of a dynamic library prepared for Nelson.

## Output argument

- gateway_name - a string: gateway name
- builtin_list - a cell of strings: list of builtin in this gateway

## Description

<p>
            [gateway_name, builtin_list] = gatewayinfo(dyn_lib_path) get information about an gateway.</p>

<p>The dynamic library must have at least an C entry point GetGatewayInfo.</p>

<p>If file does not exist an error is raised.</p>

## Example

```matlab
[gateway_name, builtin_list] = gatewayinfo(modulepath('time', 'builtin'))

```

## See also

[addgateway](../dynamic_link/addgateway.md), [removegateway](../dynamic_link/removegateway.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
