$fn=100;
holder_thickness = 6;
holder_diameter = 30;
hole_diameter = 4.2;
rod_diameter = 8;

linear_extrude(height=holder_thickness) {
    difference() {
        circle(d = holder_diameter);

        # hull() {
            circle(d = rod_diameter);
            translate([0, holder_diameter/2, 0])
                circle(d = rod_diameter);
        }

        let(hole_position = holder_diameter * 0.3) {
            translate([hole_position, 0, 0])
                circle(d = hole_diameter);
            translate([- hole_position, 0, 0])
                circle(d = hole_diameter);
        }
    }
}
