{lib, ...}: {
  enableMan = true;
  opts = {
    number = true;
    relativenumber = false;
    tabstop = 4;
    softtabstop = 0;
    expandtab = false;
    shiftwidth = 4;
    guifont = "DejaVuSansM Nerd Font";
    termguicolors = true;
    clipboard.__raw =
      #lua
      ''vim.env.SSH_TTY and "" or "unnamedplus"'';
    completeopt = "menu,menuone,noselect";
    conceallevel = 2;
    confirm = true;
    cursorline = true;
    fillchars = {
      foldopen = "";
      foldclose = "";
      fold = " ";
      foldsep = " ";
      diff = "╱";
      eob = " ";
    };
    foldlevel = 99;
    formatexpr = "v:lua.require'conform'.formatexpr()";
    formatoptions = "jcroqlnt";
    grepformat = "%f:%l:%c:%m";
    grepprg = "rg --vimgrep";
    ignorecase = true;
    inccommand = "nosplit";
    jumpoptions = "view";
    laststatus = 3;
    linebreak = true;
    list = true;
    mouse = "a";
    pumblend = 10;
    pumheight = 10;
    ruler = false;
    scrolloff = 4;
    sessionoptions = ["buffers" "curdir" "tabpages" "winsize" "help" "globals" "skiprtp" "folds"];
    shiftround = true;
    #shortmess:append({ W = true, I = true, c = true, C = true })
    showmode = false;
    sidescrolloff = 8;
    signcolumn = "yes";
    smartcase = true;
    smartindent = true;
    spelllang = ["en"];
    splitbelow = true;
    splitkeep = "screen";
    splitright = true;
    statuscolumn.__raw = ''[[%!v:lua.require'snacks.statuscolumn'.get()]]'';
    timeoutlen.__raw = ''vim.g.vscode and 1000 or 300'';
    undofile = true;
    undolevels = 10000;
    updatetime = 200;
    virtualedit = "block";
    wildmode = "longest:full,full";
    winminwidth = 5;
    wrap = false;
  };
  globals = {
    mapleader = " ";
    neovide_opacity = 0.83;
    neovide_normal_opacity = 0.83;
    neovide_window_blurred = true;
    neovide_input_macos_option_key_is_meta = "only_left";
    deprecation_warnings = false;
    trouble_lualine = true;
    snacks_animate = true;
  };

  keymaps = lib.lists.flatten (lib.attrsets.attrValues {
    buffers = [
      {
        key = "{";
        action = "<cmd>bprevious<cr>";
        options.desc = "Previous buffer";
      }
      {
        key = "}";
        action = "<cmd>bnext<cr>";
        options.desc = "Next buffer";
      }
      {
        key = "<leader>bd";
        action.__raw = "function() Snacks.bufdelete() end";
        options.desc = "Delete Buffer";
      }
      {
        key = "<leader>bo";
        action.__raw = "function() Snacks.bufdelete.other() end";
        options.desc = "Delete Other Buffers";
      }
      {
        key = "<leader>bD";
        action = "<cmd>:bd<cr>";
        options.desc = "Delete Buffer and Window";
      }
    ];

    misc = [
      {
        key = "<leader>qq";
        action = "<cmd>qa<CR>";
        options.desc = "Quit All";
      }

      {
        mode = "v";
        key = "<";
        action = "<gv";
      }
      {
        mode = "v";
        key = ">";
        action = ">gv";
      }

      {
        mode = ["i" "x" "n" "s"];
        key = "<C-s>";
        action = "<cmd>w<cr><esc>";
        options.desc = "Save File";
      }
    ];

    move_lines = [
      # move lines cutely
      {
        mode = "n";
        key = "<A-j>";
        action = "<cmd>execute 'move .+' . v:count1<cr>==";
        options.desc = "Move Down";
        options.silent = true;
      }
      {
        mode = "n";
        key = "<A-k>";
        action = "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==";
        options.desc = "Move Up";
        options.silent = true;
      }
      {
        mode = "i";
        key = "<A-j>";
        action = "<esc><cmd>m .+1<cr>==gi";
        options.desc = "Move Down";
        options.silent = true;
      }
      {
        mode = "i";
        key = "<A-k>";
        action = "<esc><cmd>m .-2<cr>==gi";
        options.desc = "Move Up";
        options.silent = true;
      }
      {
        mode = "v";
        key = "<A-j>";
        action = ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv";
        options.desc = "Move Down";
        options.silent = true;
      }
      {
        mode = "v";
        key = "<A-k>";
        action = ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv";
        options.desc = "Move Up";
        options.silent = true;
      }
      {
        mode = "n";
        key = "<A-Down>";
        action = "<cmd>execute 'move .+' . v:count1<cr>==";
        options.desc = "Move Down";
        options.silent = true;
      }
      {
        mode = "n";
        key = "<A-Up>";
        action = "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==";
        options.desc = "Move Up";
        options.silent = true;
      }
      {
        mode = "i";
        key = "<A-Down>";
        action = "<esc><cmd>m .+1<cr>==gi";
        options.desc = "Move Down";
        options.silent = true;
      }
      {
        mode = "i";
        key = "<A-Up>";
        action = "<esc><cmd>m .-2<cr>==gi";
        options.desc = "Move Up";
        options.silent = true;
      }
      {
        mode = "v";
        key = "<A-Down>";
        action = ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv";
        options.desc = "Move Down";
        options.silent = true;
      }
      {
        mode = "v";
        key = "<A-Up>";
        action = ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv";
        options.desc = "Move Up";
        options.silent = true;
      }
    ];

    search = [
      {
        mode = "n";
        key = "n";
        action = "'Nn'[v:searchforward].'zv'";
        options.expr = true;
        options.desc = "Next Search Result";
      }
      {
        mode = "x";
        key = "n";
        action = "'Nn'[v:searchforward]";
        options.expr = true;
        options.desc = "Next Search Result";
      }
      {
        mode = "o";
        key = "n";
        action = "'Nn'[v:searchforward]";
        options.expr = true;
        options.desc = "Next Search Result";
      }
      {
        mode = "n";
        key = "N";
        action = "'nN'[v:searchforward].'zv'";
        options.expr = true;
        options.desc = "Prev Search Result";
      }
      {
        mode = "x";
        key = "N";
        action = "'nN'[v:searchforward]";
        options.expr = true;
        options.desc = "Prev Search Result";
      }
      {
        mode = "o";
        key = "N";
        action = "'nN'[v:searchforward]";
        options.expr = true;
        options.desc = "Prev Search Result";
      }
    ];
  });
}
