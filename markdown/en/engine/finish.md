# finish

User-defined termination script for Nelson.

## Description

<p>
            <b>startup.m</b> in Nelson initiates user-specified commands upon Nelson startup.</p>
<p>It executes any file named <b>startup.m</b> that is located on the search path.</p>
<p>To leverage this feature, create a file named <b>startup.m</b> in the userpath folder, which is included in the Nelson search path.</p>
<p>Embed commands within this file that you wish to be executed during Nelson startup.</p>
<p>This could involve setting physical constants, defining defaults for graphics properties, incorporating engineering conversion factors, or predefining any other elements desired in your workspace.</p>
<p>Customizing the <b>startup.m</b> file allows you to establish a tailored environment every time Nelson is launched.</p>

## See also

[exit](../core/exit.md), [quit](../core/quit.md), [startup](../engine/startup.md), [userpath](../functions_manager/userpath.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
