local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

require'lspconfig'.html.setup { -- html
	capabilities = capabilities
}

require'lspconfig'.cssls.setup { -- CSS
	capabilities = capabilities
}

require'lspconfig'.tailwindcss.setup{ -- tailwindcss
	capabilities = capabilities
}

require'lspconfig'.tsserver.setup{ -- Typescript/Javascript
	capabilities = capabilities 
}

require'lspconfig'.jsonls.setup{ -- json
	capabilities = capabilities
}

require'lspconfig'.pylsp.setup{ -- Python
	capabilities = capabilities 
}

require'lspconfig'.bashls.setup{ -- bash
	capabilities = capabilities 
}

require'lspconfig'.solc.setup{ -- Solidity
	capabilities = capabilities 
}
