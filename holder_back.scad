$fn=100;
holder_back_thickness = 2;
holder_diameter = 30;
hole_diameter = 3.6;

linear_extrude(height=holder_back_thickness) {
    difference() {
        circle(d = holder_diameter);

        let(hole_position = holder_diameter * 0.3) {
            translate([hole_position, 0, 0])
                circle(d = hole_diameter);
            translate([- hole_position, 0, 0])
                circle(d = hole_diameter);
        }
    }
}
