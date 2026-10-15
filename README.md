# ZRN Mod Template - Default Addon

The default addon that new addons in [ZRN-Mod-Template](https://github.com/OverlordZorn/ZRN-Mod-Template) based mods are created from.

Every mod downloads it from the `main` branch of this repository, so changes here are used by every mod as soon as they are merged.

## Creating an addon

Double-click `tools\new-addon.bat` in your mod, or run it from a terminal in the mod's root (e.g. in VSCode):

```
tools\new-addon.bat
```

The script asks for the addon name, the display name and the author, fills in the placeholders and creates `addons\<name>`. See the [mod template's README](https://github.com/OverlordZorn/ZRN-Mod-Template#per-new-addon) for its options.

## What's inside

The `addon` folder contains:
- `$PBOPREFIX$`, `config.cpp` and `script_component.hpp`
- basic CfgFunctions setup with an example function `fn_example.sqf`
- basic CBA XEH setup with `XEH_preInit.sqf` and templates for CBA settings and keybinds
- `stringtable.xml` with the keys for the example CBA setting

## Placeholders

Used in file contents and in file and folder names:

| Placeholder | Filled with |
|---|---|
| `{{MAINPREFIX}}` | `mainprefix` from the mod's `.hemtt\project.toml` |
| `{{PREFIX}}` | `prefix` from the mod's `.hemtt\project.toml` |
| `{{ADDON}}` | the addon name, like `my_addon` |
| `{{ADDON_BEAUTIFIED}}` | the display name, like `My Addon` |
| `{{AUTHOR}}` | the author |

The script stops if it finds any other `{{PLACEHOLDER}}`, so new ones need to be added to `tools\new-addon.ps1` in the mod template first.

## Testing changes

Try a change in a mod before merging it, using your local clone instead of the published version:

```
tools\new-addon.bat -TemplateDir ..\ZRN-Mod-Template-Default-Addon\addon
```

`Validate: Default Addon` does the same on every push and PR: it creates an addon from this repository inside the mod template, then runs `hemtt check` and the config validation.
