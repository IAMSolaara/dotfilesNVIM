{
  plugins.neo-tree = {
    enable = true;
    enableDiagnostics = true;
    enableGitStatus = true;
    enableModifiedMarkers = true;
    enableRefreshOnWrite = true;
    gitStatusAsync = true;
    addBlankLineAtTop = true;
    autoCleanAfterSessionRestore = true;
  };
  keymaps = [
    {
      key = "<leader>e";
      action.__raw =
        #lua
        ''function() require("neo-tree.command").execute({ toggle = true }) end'';
      options.silent = true;
      options.desc = "Toggle Neo-tree.";
    }
  ];
}
