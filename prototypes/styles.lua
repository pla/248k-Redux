local style = data.raw["gui-style"]["default"]
style.ei_subheader_frame = {
    type = "frame_style",
    parent = "subheader_frame",
    horizontally_stretchable = "on"
}
style.ei_titlebar_draggable_spacer = {
    type = "empty_widget_style",
    parent = "draggable_space",
    height = 24,
    horizontally_stretchable = "on",
    left_margin = 4,
    right_margin = 4
}
