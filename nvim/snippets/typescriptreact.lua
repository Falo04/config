local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("typescriptreact", {
  s("rts", {
    t({ "import { createFileRoute } from '@tanstack/react-router';", "", "" }),
    t({ "/**", "" }),
    t({ "  * The properties for {@link CompName}", "" }),
    t({ "  */", "" }),
    t({ "" }),
    t({ "export type CompNameProps = {};", "" }),
    t({ "", "" }),
    t({ "/**", "" }),
    t({ "  * The CompName", "" }),
    t({ "  */", "" }),
    t({ "function CompName(props: CompNameProps) {", "" }),
    t({ "    return (", "" }),
    t({ "         <div></div>", "" }),
    t({ "    );", "" }),
    t({ "}", "" }),
    t({ "" }),
  }),
})
