return {
  "nvimdev/dashboard-nvim",
  lazy = false,
  opts = function()
    -- local logo = [[
    --                                           
    --    ████ ██████           █████      ██
    --   ███████████             █████ 
    --   █████████ ███████████████████ ███   ███████████
    --  █████████  ███    █████████████ █████ ██████████████
    -- █████████ ██████████ █████████ █████ █████ ████ █████
    --    ███████████ ███    ███ █████████ █████ █████ ████ █████
    --   ██████  █████████████████████ ████ █████ █████ ████ ██████
    --  ]]
    --     local logo = [[
    --   ___     ___    ___   __  __ /\_\    ____ __
    --  / __⠁\  / __⠁\ / __⠁\/\ \/\ \\/\ \  / __ ⠁__⠁\
    -- /\ \/\ \/\ ___//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \
    -- \ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\╲
    --  \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/╲
    -- ]]
    --     local logo = [[
    --  ████  █▀▀▀█ ████/█ /█/█  ██████
    -- /█/█/█▀▀▀▀/█ █ █\█\ █/█/█/█
    -- \ █ █ █████ ████\ ███  \ █ █ █ █
    --  \/_/\/_/\/_____/\/___/  \/__/    \/_/\/_/\/_/\/_/
    -- ]]

    local str = [[

🬀	🬁	🬂	🬃	🬄	🬅	🬆	🬇	🬈	🬉	🬊	🬋	🬌	🬍	🬎	🬏
U+1FB1x	🬐	🬑	🬒	🬓	🬔	🬕	🬖	🬗	🬘	🬙	🬚	🬛	🬜	🬝	🬞	🬟
U+1FB2x	🬠	🬡	🬢	🬣	🬤	🬥	🬦	🬧	🬨	🬩	🬪	🬫	🬬	🬭	🬮	🬯
U+1FB3x	🬰	🬱	🬲	🬳	🬴	🬵	🬶	🬷	🬸	🬹	🬺	🬻	🬼	🬽	🬾	🬿
U+1FB4x	🭀	🭁	🭂	🭃	🭄	🭅	🭆	🭇	🭈	🭉	🭊	🭋	🭌	🭍	🭎	🭏
U+1FB5x	🭐	🭑	🭒	🭓	🭔	🭕	🭖	🭗	🭘	🭙	🭚	🭛	🭜	🭝	🭞	🭟
U+1FB6x	🭠	🭡	🭢	🭣	🭤	🭥	🭦	🭧	🭨	🭩	🭪	🭫	🭬	🭭	🭮	🭯
U+1FB7x	🭰	🭱	🭲	🭳	🭴	🭵	🭶	🭷	🭸	🭹	🭺	🭻	🭼	🭽	🭾	🭿
U+1FB8x	🮀	🮁	🮂	🮃	🮄	🮅	🮆	🮇	🮈	🮉	🮊	🮋	🮌	🮍	🮎	🮏
U+1FB9x	🮐	🮑	🮒		🮔	🮕	🮖	🮗	🮘	🮙	🮚	🮛	🮜	🮝	🮞	🮟
U+1FBAx	🮠	🮡	🮢	🮣	🮤	🮥	🮦	🮧	🮨	🮩	🮪	🮫	🮬	🮭	🮮	🮯
U+1FBBx	🮰	🮱	🮲	🮳	🮴	🮵	🮶	🮷	🮸	🮹	🮺	🮻	🮼	🮽	🮾	🮿
U+1FBCx	🯀	🯁	🯂	🯃	🯄	🯅	🯆	🯇	🯈	🯉	🯊	🯋	🯌	🯍	🯎	🯏
U+1FBDx	🯐	🯑	🯒	🯓	🯔	🯕	🯖	🯗	🯘	🯙	🯚	🯛	🯜	🯝	🯞	🯟
U+1FBEx	🯠	🯡	🯢	🯣	🯤	🯥	🯦	🯧	🯨	🯩	🯪	🯫	🯬	🯭	🯮	🯯
U+1FBFx	🯰	🯱	🯲	🯳	🯴	🯵	🯶	🯷	🯸	🯹						
    ]]

    local logo = [[
 ████  █████ ████╱█ ╱█╱█  ██████  
╱█╱█╱🭌▆▆▆█╱█ █ █╲█╲ █╱█╱█╱█ 
╲ █ █ 🭌▆▆▆▆ ████╲ ███  ╲ █ █ █ █
 ╲╱ ╱╲╱ ╱╲╱     ╱╲╱   ╱  ╲╱  ╱    ╲╱ ╱╲╱ ╱╲╱ ╱╲╱ ╱
  ‾‾  ⎺⎺  ⎺⎺⎺⎺⎺⎺  ⎺⎺⎺⎺    ⎺⎺⎺      ⎺⎺  ⎺⎺  ⎺⎺  ⎺⎺ 
]]

    logo = string.rep("\n", 9) .. logo .. string.rep("\n", 1)
    local opts = {
      theme = "doom",
      hide = {
        -- this is taken care of by lualine
        -- enabling this messes up the actual laststatus setting after loading a file
        statusline = false,
      },
      config = {
        header = vim.split(logo, "\n"),
      -- stylua: ignore
      center = {
        { action = "Telescope find_files",                                     desc = " Find file",       icon = " ", key = "f" },
        { action = "ene | startinsert",                                        desc = " New file",        icon = " ", key = "n" },
        { action = "Telescope oldfiles",                                       desc = " Recent files",    icon = " ", key = "r" },
        { action = "Telescope live_grep",                                      desc = " Find text",       icon = " ", key = "g" },
        { action = [[lua require("lazyvim.util").telescope.config_files()()]], desc = " Config",          icon = " ", key = "c" },
        { action = 'lua require("persistence").load()',                        desc = " Restore Session", icon = " ", key = "s" },
        { action = "LazyExtras",                                               desc = " Lazy Extras",     icon = " ", key = "x" },
        { action = "Lazy",                                                     desc = " Lazy",            icon = "󰒲 ", key = "l" },
        { action = "qa",                                                       desc = " Quit",            icon = " ", key = "q" },
      },
        footer = function()
          local stats = require("lazy").stats()
          local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
          return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
        end,
      },
    }

    for _, button in ipairs(opts.config.center) do
      button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
      button.key_format = "  %s"
    end

    -- open dashboard after closing lazy
    if vim.o.filetype == "lazy" then
      vim.api.nvim_create_autocmd("WinClosed", {
        pattern = tostring(vim.api.nvim_get_current_win()),
        once = true,
        callback = function()
          vim.schedule(function()
            vim.api.nvim_exec_autocmds("UIEnter", { group = "dashboard" })
          end)
        end,
      })
    end

    return opts
  end,
}
