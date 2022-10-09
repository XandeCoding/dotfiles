local status_ok, nauto_save = pcall(require, "auto-save")
if not status_ok then
 return 
end

local message_function = function()
  return ("AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"))
end

nauto_save.setup(
    {
        enabled = true,
        execution_message = {
          message = message_function(),
          dim = 0.18,
          cleaning_interval = 750,
        },
        trigger_events = {"InsertLeave", "TextChanged"},
        condition = function(buf)
            local fn = vim.fn
            local utils = require("auto-save.utils.data")

            if fn.getbufvar(buf, "&modifiable") == 1 and
                utils.not_in(fn.getbufvar(buf, "&filetype"), {}) then
                return true -- met condition(s), can save
            end
            return false -- can't save
        end,
        debounce_delay = 250,
        write_all_buffers = false,
    }
)
