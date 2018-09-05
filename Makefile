all: main.c colorprint.c
	gcc main.c colorprint.c -fsanitize=address -g -Wall -Wextra -o test

header: colorprint.c
	sed s/ansi_color_t/_cp_ansi_color_t/g colorprint.c | sed s/tag_t/_cp_tag_t/g | sed s/color_type_t/_cp_color_type_t/g | sed s/colorstack_t/_cp_colorstack_t/g | sed s/command_t/_cp_command_t/g | sed s/buffer_t/_cp_buffer_t/g | sed s/color_t/_cp_color_t/g | sed s/fg_color_strings/_cp_fg_color_strings/g | sed s/bg_color_strings/_cp_bg_color_strings/g | sed s/buffer_increase_size/_cp_buffer_increase_size/g | sed s/buffer_create/_cp_buffer_create/g | sed s/buffer_append_char/_cp_buffer_append_char/g | sed s/buffer_append_char/_cp_buffer_append_char/g | sed s/buffer_append_string/_cp_buffer_append_string/g | sed s/colorstack_push/_cp_colorstack_push/g | sed s/colorstack_pop/_cp_colorstack_pop/g | sed s/parse_command/_cp_parse_command/g | sed s/parse_color/_cp_parse_color/g | sed s/vprintf_color/_cp_vprintf_color/g | sed s/spinner_state/_cp_spinner_state/g | sed s/spinner_value/_cp_spinner_value/g | sed s/progress_state/_cp_progress_state/g | sed s/progress_max/_cp_progress_max/g | sed s/progress_format/_cp_progress_format/g | sed s/MAX_COMMAND_LENGTH/_CP_MAX_COMMAND_LENGTH/g > colorprint_header.h

headertest: test_header.c header
	gcc test_header.c -fsanitize=address -g  -Wall -Wextra -o htest

clean:
	rm -f *.o test htest colorprint_header.h
