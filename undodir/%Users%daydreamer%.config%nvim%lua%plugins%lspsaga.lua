Vim�UnDo� ��A�oN��;P�g��u�]`�]�P��_�   
                                  e�f�    _�                             ����                                                                                                                                                                                                                                                                                                                                                             e�f�     �                   �               5��                    	                      �      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e�f�     �          
      {5��                                                  5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e�f�    �              	       "nvimdev/lspsaga.nvim",       config = function()   "      require("lspsaga").setup({})   U      vim.keymap.set({ "n", "v" }, "<space>ca", "<cmd>Lspsaga code_action<cr>", opts)   H      vim.keymap.set("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<cr>")   H      vim.keymap.set("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<cr>")   A      vim.keymap.set("n", "<space>o", "<cmd>Lspsaga outline<cr>")       end,     }5��                              �      x      5��