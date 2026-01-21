if vim.loader then
    vim.loader.enable()
end

require("core.keysmap")
require("core.options")
require("core.commands")
require("core.lazy")
