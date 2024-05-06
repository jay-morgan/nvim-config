local Worktree = require("git-worktree")

Worktree.on_tree_change(function(op, metadata)
  if op == Worktree.Operations.Create then
    print("Created worktree, path: " .. metadata.path .. "branch: " .. metadata.branch .. "upstream: " .. metadata.upstream)
  end
  if op == Worktree.Operations.Switch then
    print("Switched from " .. metadata.prev_path .. " to " .. metadata.path)
  end
  if op == Worktree.Operations.Delete then
    print("Deleted worktree " .. metadata.path)
  end
end)