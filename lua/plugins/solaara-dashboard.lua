return {
  {
    "folke/snacks.nvim",
    opts = function(_, opts)
      local logo = [[

                       ..                    
                       ..                    
       ..             ..                     
       ,lc.           ''                     
         ;oc.         ..             .       
           ;l'   ..''''...       ...         
             .;c,.        ....  ..           
            co.              .'              
           xo                  '.            
XWNXKOkx; c0.                  .,            
  ....''. x0                   ., .....      
          :X'                  ', ...........
           xK'                ';             
            :Kx.            .:,              
        ,OMO  ;x0d:,....';ll,  .             
     .dWWx'      .';::;,'.    :l;            
     'k;           :x:         .cl;          
                   ONl           .ll'        
                   WM             .          
                  .MM                        
                                             
             S O L A A R A                   

]]

      opts.dashboard.preset.header = logo

      vim.cmd([[highlight SnacksDashboardHeader guifg=#fff1a4]])
    end,
  },
}
