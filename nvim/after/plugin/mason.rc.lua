local status, mason = pcall(require, 'mason')
if (not status) then return end

local status2, lspconfig = pcall(require, 'mason-lspconfig')
if (not status) then return end

mason.setup {}
lspconfig.setup {
  ensure_installed = { 'tailwindcss', 'prisma-language-server' }
}

require 'lspconfig'.tailwindcss.setup {}
require 'lspconfig'.prismals.setup {}
