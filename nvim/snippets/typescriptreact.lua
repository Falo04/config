local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node

ls.add_snippets("typescriptreact", {
  s("rts", {
    t({ "import { createFileRoute } from '@tanstack/react-router';", "" }),
    t({ "import { useTranslation } from 'react-i18next';", "", "" }),
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
    t({ "    const [t] = useTranslation();", "", "" }),
    t({ "    return (", "" }),
    t({ "         <div></div>", "" }),
    t({ "    );", "" }),
    t({ "}", "" }),
    t({ "" }),
  }),
})
