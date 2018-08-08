// scr_text("Text", speed, x, y);

txt = instance_create(argument2, argument3, obj_text);
with(txt)
{
    padding = 16;
    maxlength = view_wview[0];
    text = argument0;
    spd = argument1;
    font = fnt_textbox;
    
    text_length = string_length(text);
    font_size = font_get_size(font);
    
    draw_set_font(font);
}
