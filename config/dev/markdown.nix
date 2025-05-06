{
  autoCmd = [
    {
      event = ["FileType"];
      pattern = "markdown";
      desc = "Disable annoying spellcheck.";
      callback.__raw =
        #lua
        "function() vim.opt_local.spell = false end";
    }
  ];
}
