// pantry tokens by Mikki Friend
// 1.0

//$vpt = ([52, -36, -3]); // translation
//$vpr = ([0,0, 0]); // rotation
//$vpd = (1030); // camera distance
//$vpf = (22); // camera field of view

// parameters
special_sign = "+";
highest_token = 11;
token_thickness = inch(1/32);
hole_z = -inch(1/32);
hole_thickness = inch(13/128);

// render 2 lines of tokens
lineup("white", highest_token);
translate([0, inch(-2), 0]) {
    lineup("red", highest_token, true);
}

// token template
module token(color="black", number=1, slash) {
    number_display = slash ? str(number,special_sign) : str(number);
    
    big_modifier = (
        (number <= 5) ? 0 :
        (number <= 6) ? 1 :
        (number <= 9) ? 1 :
        (number > 9) ? 4 :
        0
    );
    text_size = ((slash ? 13 : 14.5) + ((number-1) * 1.25)) - big_modifier;
    font = "Arugula DAF 20231006";
    
    function size_increment(n) =
        (n == 1) ? 0 :
        (n == 2) ? 1 :
        (n <= 4) ? 2 :
        (n <= 7) ? 3 :
        (n > 7) ? 4 :
        4;

    circle_radius = inch(0.45) + inch((size_increment(number) * 1/12));

    difference() {
        color(color)
        union() {
            linear_extrude(height = token_thickness)
            circle(circle_radius);
            translate([0,0,-(token_thickness/1.5)]) {
                linear_extrude(height = token_thickness*2.5)
                circle(circle_radius-0.5);
            }
        }
        color(color) {
            union() {
                // number
                translate([
                    (slash ? 0 : -inch(1/32)),
                    1.5,
                    hole_z
                ]) {
                    linear_extrude (height = hole_thickness)
                    text(text=number_display, size = text_size, font=font, halign = "center", valign = "center", spacing = 0.9);
                }
                // underline
                # translate([
                    -inch(0.05 + (size_increment(number) * 0.02)),
                    -inch(0.3 + (number>1 ? (size_increment(number) * 0.06) : 0)),
                    hole_z
                ]) {
                    linear_extrude (height = hole_thickness)
                    text(text="._", size = text_size*0.65, font=font, halign = "center", valign = "center", spacing=0.7);
                }
            }
        }
    }
}

module lineup(color, num, slash=false) {
    for (i = [0 : num-1]) {
        spacing = (inch(1)*i) + (i>0 ? (i*inch(0.8)) : 0);
        translate([ spacing, 0, 0 ])
            token(color, i+1, slash);
    }
}

function inch(x) = x*25.4;