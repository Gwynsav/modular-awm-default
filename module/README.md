# AwesomeWM Community Modules

This directory serves as a container for community modules, for easy access in code.
To add submodules like the popular [bling](https://github.com/blingcorp/bling) or
[rubato](https://github.com/andorlando/rubato), either clone their repos into this
directory or add them as submodules of this repository.

An example file structure would be:
```
~/.config/awesome/
    ...
    - module
        - bling
            ...
            init.lua
        - rubato
            ...
            init.lua
        - some_mod
            ...
            init.lua
        ...
    ...
```

Which would allow you to use these modules anywhere inside the config directory by
simply referencing them as:
```
local bling = require('module.bling')
local some_mod = require('module.some_mod')
```

## Common Community Modules

- [blingcorp/bling](https://github.com/blingcorp/bling), a collaborative community library
providing several goods like new layouts, widgets, signals and functionality like
scratchpads and tabbing.
- [andOrlando/rubato](https://github.com/andorlando/rubato), an animation library that's
easy to use. Do mind the fact that AWM runs on a **single CPU thread** and animations can
stress it pretty hard, so don't abuse them.
- [Aire-One/awesome-battery_widget](https://github.com/aire-one/awesome-battery_widget),
a simple and quick library providing battery information for laptops.

And many more.
