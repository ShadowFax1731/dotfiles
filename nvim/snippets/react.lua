local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local f = ls.function_node
local i = ls.insert_node

-- Get the current filename (without extension)
local function get_filename(_, parent)
    local filename = vim.fn.expand("%:t:r") -- %:t:r = filename without extension
    return filename ~= "" and filename or "ComponentName"
end

-- Snippet for JavaScript React
ls.add_snippets("javascriptreact", {
    s("rfc", {
        t({ "import React from 'react';", "", "" }),
        t("const "), f(get_filename, {}), t(" = () => {"),
        t({ "", "  return (" }),
        t({ "", "    <div>" }),
        t({ "", "      " }), i(1, "/* Add content here */"),
        t({ "", "    </div>" }),
        t({ "", "  );" }),
        t({ "", "};", "", "" }),
        t("export default "), f(get_filename, {}), t(";")
    })
})

-- Snippet for TypeScript React
ls.add_snippets("typescriptreact", {
    s("rfc", {
        t({ "import React from 'react';", "", "" }),
        t("interface Props {"),
        t({ "", "  " }), i(1, "// props here"),
        t({ "", "}" }),
        t({ "", "" }),
        t("const "), f(get_filename, {}), t(": React.FC<Props> = () => {"),
        t({ "", "  return (" }),
        t({ "", "    <div>" }),
        t({ "", "      " }), i(2, "/* Add content here */"),
        t({ "", "    </div>" }),
        t({ "", "  );" }),
        t({ "", "};", "", "" }),
        t("export default "), f(get_filename, {}), t(";")
    })
})
