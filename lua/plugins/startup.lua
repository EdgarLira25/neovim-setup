return {
     "goolord/alpha-nvim",
     config = function ()
         local alpha = require'alpha'
         local dashboard = require'alpha.themes.dashboard'
         dashboard.section.header.val = {
[[                                                                                                                                                                                 dddddddd ]],
[[ hhhhhhh                                 lllllll lllllll                                                                                                     lllllll             d::::::d ]],
[[ h:::::h                                 l:::::l l:::::l                                                                                                     l:::::l             d::::::d ]],
[[ h:::::h                                 l:::::l l:::::l                                                                                                     l:::::l             d::::::d ]],
[[ h:::::h                                 l:::::l l:::::l                                                                                                     l:::::l             d:::::d ]],
[[  h::::h hhhhh           eeeeeeeeeeee     l::::l  l::::l    ooooooooooo        wwwwwww           wwwww           wwwwwww   ooooooooooo   rrrrr   rrrrrrrrr    l::::l     ddddddddd:::::d ]],
[[  h::::hh:::::hhh      ee::::::::::::ee   l::::l  l::::l  oo:::::::::::oo       w:::::w         w:::::w         w:::::w  oo:::::::::::oo r::::rrr:::::::::r   l::::l   dd::::::::::::::d ]],
[[  h::::::::::::::hh   e::::::eeeee:::::ee l::::l  l::::l o:::::::::::::::o       w:::::w       w:::::::w       w:::::w  o:::::::::::::::or:::::::::::::::::r  l::::l  d::::::::::::::::d ]],
[[  h:::::::hhh::::::h e::::::e     e:::::e l::::l  l::::l o:::::ooooo:::::o        w:::::w     w:::::::::w     w:::::w   o:::::ooooo:::::orr::::::rrrrr::::::r l::::l d:::::::ddddd:::::d ]],
[[  h::::::h   h::::::he:::::::eeeee::::::e l::::l  l::::l o::::o     o::::o         w:::::w   w:::::w:::::w   w:::::w    o::::o     o::::o r:::::r     r:::::r l::::l d::::::d    d:::::d ]],
[[  h:::::h     h:::::he:::::::::::::::::e  l::::l  l::::l o::::o     o::::o          w:::::w w:::::w w:::::w w:::::w     o::::o     o::::o r:::::r     rrrrrrr l::::l d:::::d     d:::::d ]],
[[  h:::::h     h:::::he::::::eeeeeeeeeee   l::::l  l::::l o::::o     o::::o           w:::::w:::::w   w:::::w:::::w      o::::o     o::::o r:::::r             l::::l d:::::d     d:::::d ]],
[[  h:::::h     h:::::he:::::::e            l::::l  l::::l o::::o     o::::o            w:::::::::w     w:::::::::w       o::::o     o::::o r:::::r             l::::l d:::::d     d:::::d ]],
[[  h:::::h     h:::::he::::::::e          l::::::ll::::::lo:::::ooooo:::::o             w:::::::w       w:::::::w        o:::::ooooo:::::o r:::::r            l::::::ld::::::ddddd::::::dd ]],
[[  h:::::h     h:::::h e::::::::eeeeeeee  l::::::ll::::::lo:::::::::::::::o              w:::::w         w:::::w         o:::::::::::::::o r:::::r            l::::::l d:::::::::::::::::d ]],
[[  h:::::h     h:::::h  ee:::::::::::::e  l::::::ll::::::l oo:::::::::::oo                w:::w           w:::w           oo:::::::::::oo  r:::::r            l::::::l  d:::::::::ddd::::d ]],
[[  hhhhhhh     hhhhhhh    eeeeeeeeeeeeee  llllllllllllllll   ooooooooooo                   www             www              ooooooooooo    rrrrrrr            llllllll   ddddddddd   ddddd ]],

         }
         dashboard.section.buttons.val = {
            dashboard.button("p", "  Projects", ":Telescope projects<CR>"),
            dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
            dashboard.button("r", "  Recent files", ":Telescope oldfiles<CR>"),
            dashboard.button("f", "  Find file", ":Telescope find_files<CR>"),
            dashboard.button("c", "  Configuration", ":e $MYVIMRC<CR>"),
            dashboard.button("u", "  Update plugins", ":Lazy sync<CR>"),
            dashboard.button("q", "󰅚  Quit NVIM", ":qa<CR>"),
        }
         local handle = io.popen('fortune')
         local fortune = handle:read("*a")
         handle:close()
         dashboard.section.footer.val = fortune

         dashboard.config.opts.noautocmd = true

         vim.cmd[[autocmd User AlphaReady echo 'ready']]

         alpha.setup(dashboard.config)
     end
 }
