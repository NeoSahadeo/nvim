# My MEConfig

**Package Manager: Lazy.**

## How to install

Run this (or don't)

```bash
git clone --depth=1 www.github.com/NeoSahadeo/nvim
mv ~/.config/nvim ~/.config/nvim.old
mv nvim ~/.config/
```
Then you need to bootstrap the program.
So disable everything except lazy

```lua
-- require("config.options")
-- require("config.keymaps")
require("config.lazy")
```

Rerun nvim to install Lazy.
Then renable le stuff!

```lua
require("config.options")
require("config.keymaps")
require("config.lazy")
```

Enjoy it!
