return {
    "sphamba/smear-cursor.nvim",
    opts = {
        -- Enable smear effect
        smear_between_buffers = true,
        smear_between_neighbor_lines = true,
        scroll_buffer_space = true,

        -- Animation speed
        time_interval = 8,

        -- Smear length & softness
        -- stiffness = 0.55,
        -- trailing_stiffness = 0.25,
        --
        stiffness = 0.45,
        trailing_stiffness = 0.18,
        --
        -- stiffness = 0.45,
        -- trailing_stiffness = 0.18,

        distance_stop_animating = 0.03,

        -- Smear effect in Insert mode
        smear_insert_mode = true,
    },
}
