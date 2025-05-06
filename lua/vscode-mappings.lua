local map = vim.keymap.set
local vscode = require("vscode")

map("n", ";", ":", { desc = "CMD enter command mode" })

map("n", "]d", function() vscode.call('editor.action.marker.next') end, { desc = "Next problem" })
map("n", "[d", function() vscode.call('editor.action.marker.prev') end, { desc = "Previous problem" })

map("n", "]g", function() vscode.call('workbench.action.editor.nextChange') end, { desc = "Previous problem" })
map("n", "[g", function() vscode.call('workbench.action.editor.previousChange') end, { desc = "Previous problem" })

map("n", "<tab>", function() vscode.call('workbench.action.nextEditor') end, { desc = "Next editor" })
map("n", "<S-tab>", function() vscode.call('workbench.action.previousEditor') end, { desc = "Next editor" })

map("n", "<leader>ff", function() vscode.call('workbench.action.findInFiles') end, { desc = "Find file" })

map("n", "<leader>e", function() vscode.call('workbench.view.explorer') end)
map("n", "<leader>E", function() vscode.call('workbench.files.action.focusOpenEditorsView') end)

map("n", "<leader>q", function() vscode.call('workbench.action.closeSidebar', { args = { when = 'sideBarVisible' } }) end,
  { desc = "Close sidebar" })

map("n", "<leader>gg", function()
  vscode.call('git.viewChanges', { args = { when = '!operationInProgress' } })
end, { desc = "Git view changes" })


map("n", "<c-l>", function() vscode.call('workbench.action.focusRightGroup') end, { desc = "Focus right group" })
map("n", "<c-h>", function() vscode.call('workbench.action.focusLeftGroup') end, { desc = "Focus left group" })
map("n", "<c-k>", function() vscode.call('workbench.action.focusAboveGroup') end, { desc = "Focus above group" })
map("n", "<c-j>", function() vscode.call('workbench.action.focusBelowGroup') end, { desc = "Focus below group" })

map("n", "<leader>vs",
  function()
    vscode.call('workbench.action.splitEditorToRightGroup')
    vscode.call('workbench.action.focusLeftGroup')
    vscode.call('workbench.action.closeActiveEditor')
    vscode.call('workbench.action.focusRightGroup')
  end,
  { desc = "Split editor to right group" })

map("n", "<leader>x", function() vscode.call('workbench.action.closeActiveEditor') end, { desc = "Close active editor" })
map("n", "<leader>X", function() vscode.call('workbench.action.closeOtherEditors') end, { desc = "Close active editor" })
map("n", "<leader>bd",
  function()
    vscode.call('workbench.action.closeOtherEditors')
    vscode.call('workbench.action.closeEditorsInOtherGroups')
  end, { desc = "Close other editors" })

map("n", "<leader>ca", function() vscode.call('editor.action.quickFix') end, { desc = "Code action" })

map("n", "<leader>fm", function() vscode.action('editor.action.formatDocument') end, { desc = "Format current buffer" })
