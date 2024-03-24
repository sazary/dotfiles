local animate = require("mini.animate")
local mouse_scrolled = false

return {
  {
    "echasnovski/mini.animate",
    opts = {
      cursor = {
        enable = false,
      },
      resize = {
        timing = animate.gen_timing.quadratic({ easing = "out", duration = 50, unit = "total" }),
      },
      scroll = {
        timing = animate.gen_timing.quadratic({ easing = "out", duration = 50, unit = "total" }),
        subscroll = animate.gen_subscroll.equal({
          predicate = function(total_scroll)
            if mouse_scrolled then
              mouse_scrolled = false
              return false
            end
            return total_scroll > 1
          end,
        }),
      },
    },
  },
}
