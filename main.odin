package project

import zd "0d/odin"
import "0d/odin/std"

main :: proc() {
    arg, main_container_name, diagram_names := std.parse_command_line_args ()
    palette := std.initialize_component_palette (diagram_names, components_to_include_in_project)
    std.run_demo (&palette, arg, main_container_name, diagram_names, start_function)
}

start_function :: proc (arg : string, main_container : ^zd.Eh) {
    s := zd.new_datum_string (arg)
    msg := zd.make_message("", s, zd.make_cause (main_container, nil) )
    main_container.handler(main_container, msg)
}


components_to_include_in_project :: proc (leaves: ^[dynamic]zd.Leaf_Template) {
    zd.append_leaf (leaves, std.string_constant ("ason"))
    zd.append_leaf (leaves, std.string_constant ("ason.ohm"))
    zd.append_leaf (leaves, std.string_constant ("ason.rwr"))
    zd.append_leaf (leaves, std.string_constant ("null.js"))
}



