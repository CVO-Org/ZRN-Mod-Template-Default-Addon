#include "../script_component.hpp"

/*
* Author: {{AUTHOR}}
* [Description]
*
* Arguments:
*
* Return Value:
* None
*
* Example:
* ['something', player] call {{PREFIX}}_{{ADDON}}_fnc_example
*
* Public: Yes
*/

ZRN_LOG_3(MAINPREFIX,PREFIX,COMPONENT);
ZRN_LOG_2(localize ELSTRING(main,author),localize ELSTRING(main,url));
ZRN_LOG_3(MAJOR,MINOR,PATCH);

ZRN_LOG_MSG(fn_example is still active - remove it once the addon has real content);
systemChat format ["%1: fn_example is still active - remove it once the addon has real content", QUOTE(ADDON)];
