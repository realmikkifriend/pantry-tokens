// Coin Sorting Tray Redux
// original by Maxumx https://www.thingiverse.com/thing:30631
// redux by Mikki Friend https://github.com/realmikkifriend

/* [Tray Dimensions] */

tray_wall_thickness = 2;
tray_length = 110;
tray_width = 110;
tray_height = 20;
tray_bed_height = 0.5;
tray_bed_perimeter = 4;

/* [Coin Dimensions] */

coin_diameter = 28.5;
coin_count_x = 3;
coin_count_y = 3;
coin_gap = 6;
coin_middle = false;

//  generation code //

difference() {
    // body of box
    cube([tray_width, tray_length, tray_height]);
    // inner empty space
    translate([tray_wall_thickness, tray_wall_thickness, tray_bed_height])
        cube([
            tray_width - (tray_wall_thickness * 2),
            tray_length - (tray_wall_thickness * 2),
            tray_height - (tray_wall_thickness - 1)
        ]);
    // inner lip
    translate([
        tray_wall_thickness / 2,
        tray_wall_thickness / 2,
        (tray_height - tray_wall_thickness) + 1
    ])
    cube([
        tray_width - tray_wall_thickness,
        tray_length - tray_wall_thickness,
        tray_wall_thickness
    ]);

    create_holes();
}

// bottom lip
difference() {
    // inner lip
    translate([
        tray_wall_thickness / 2,
        tray_wall_thickness / 2,
        -tray_wall_thickness
    ])
    cube([
        tray_width - tray_wall_thickness,
        tray_length - tray_wall_thickness,
        tray_wall_thickness
    ]);

    create_holes();
}

module create_holes() {
    for (i = [0 : coin_count_x - 1]) {
        for (y = [0 : coin_count_y - 1]) {
            translate([
                (y * (coin_gap + coin_diameter)) + tray_bed_perimeter,
                (i * (coin_gap + coin_diameter)) + tray_bed_perimeter,
                -2
            ])
            translate([
                tray_wall_thickness + (coin_diameter / 2),
                tray_wall_thickness + (coin_diameter / 2),
                -tray_wall_thickness + 1
            ])
            cylinder(h = (tray_height + 2), r = (coin_diameter / 2));
        }
    }

	// optional middle hole
	if (coin_middle) {
		translate([tray_width / 2, tray_length / 2, -3]) {
		    cylinder(
		        h = (tray_height+2),
		        r = (coin_diameter/2)
			);
		}
	}
}