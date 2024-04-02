return {
  {
    "nvimdev/dashboard-nvim",
    opts = function(_, opts)
      local logo = [[                       ..                    
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
                                             
             S O L A A R A                   ]]

      logo = string.rep("\n", 2) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")

      vim.cmd([[highlight DashboardHeader guifg=#fff1a4]])
    end,
  },
}
