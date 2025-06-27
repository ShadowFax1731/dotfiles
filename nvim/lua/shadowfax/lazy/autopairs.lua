return {
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            local npairs = require("nvim-autopairs")
            local Rule = require('nvim-autopairs.rule')

            npairs.setup({
                check_ts = true, -- Enable treesitter integration
            })

            -- Add HTML tag rules
            npairs.add_rules({
                Rule("<", ">", "html"):with_pair(function(opts)
                    return opts.prev_char:match("[%w<>=]") ~= nil
                end),
            })
        end,
    },
}
