# 3D-Printed Pantry Tokens (`pantry-tokens`)

| ![tokens stored in organizing box](https://raw.githubusercontent.com/realmikkifriend/pantry-tokens/refs/heads/main/media/tokens_photo_1.jpg)        | ![hand holding a token](https://raw.githubusercontent.com/realmikkifriend/pantry-tokens/refs/heads/main/media/tokens_photo_2.jpg)           |
| ------------- |:-------------:|

The information and files in this repository are provided freely for pantries and other token-based systems to use. The `scad` file can be edited and customized relatively easily using OpenSCAD. If you have questions or requests, [contact me](https://linktr.ee/realmikkifriend).

- `README.md` is this document.
- `token_documentation_sheet.pdf` is a printable single sheet that explains the token system to volunteers.
- `tokens/tokens.stl` is a 3D printing file containing all of the token designs in both colors. Load this file into a slicer (e.g. Bambu Studio) to select, duplicate, and arrange a batch of tokens on the build plate.
- `tokens/tokens.scad` is an editable OpenSCAD file.
- `sorting_trays/CoinTrayRedux.scad` is my heavily-edited version of a [parametric coin sorting tray design by Xander Brown (maxumx)](https://www.thingiverse.com/thing:30631), which was generously provided through a CC BY-NC-SA 4.0 license.
- `sorting_trays/sortingtray_X/lid.stl` are 3D printing files for the sorting trays and lid.

# Acknowledgments

Special thanks to:

- [The Squire Jehegan Outreach Center](https://squirecenter.com/) for hosting me as a social work intern, and for presenting an interesting problem that encouraged me to learn 3D-printing basics.
- The friendly and helpful librarians, and their Bambu Lab X1C printers, at the [Fayetteville Public Library Center for Innovation](https://www.faylib.org/innovation-10978).
- [Push Plastic in Springdale, Arkansas](https://www.pushplastic.com/), which donated PLA filament to the cause.
- The [parametric coin sorting tray design by Xander Brown (maxumx)](https://www.thingiverse.com/thing:30631).
- [Arugula stencil font by CubicType](https://drj11.itch.io/arugula-font) was used to number the tokens.
- I modeled the parts in [OpenSCAD](https://openscad.org/).

# Background

In the spring of 2025, as I completed my BSW at the University of Arkansas in Fayetteville, I had the pleasure of interning at the Squire Jehegan Outreach Center, locally known as the St. James Pantry. Each Tuesday and Thursday, clients line up at the top of the hill to be checked in and receive a token indicating how many boxes of food they are to receive, based on household size and moment-to-moment supply. Clients bring the token downhill to a crew of volunteers, who load the requisite boxes into their vehicle.

When I started, the tokens were small slips of paper that were frequently misplaced or lost in the breeze, and that could easily be tampered with. I had recently started using the 3D printers at my local library, and had become fascinated with the potential intersection of 3D-printing and social work. Presented with the pantry’s faulty paper tokens, I set out to create a more durable token system.

# Design & Prototyping

My prototype tokens were initially only 1mm or 2-3 walls thick. Pantry volunteers who interacted with the paper-thin wafers pointed out that they were little better than paper. The final tokens are around 2mm thick, roughly the same as a quarter, which is enough to feel solid and make a sound when dropped. I added a rim around each token’s outer edge to make them easier to grip.

I planned to save time and filament by using negative space to communicate the number and orienting symbol. I sampled several fonts before arriving at [Arugula by CubicType](https://drj11.itch.io/arugula-font), a stencil with connected interior segments. Because some numbers are ambiguous when upside-down and/or reversed, I included a ‘dot-dash’ (`._`) to orient the token.

While browsing models online, I found parametric coin sorting trays and decided to size the tokens to facilitate sorting. The stack of trays is placed with the downhill crew, and tokens turned in by clients are dropped in through the top. I printed enough tokens to cover a slow day; if the uphill crew runs out of a token, the coin sorting trays make it quick to retrieve the desired denomination. This table lists the token denominations and their diameters.

| **Token(s)** | **1** | **2** | **3/4** | **5/6/7** | **8/9/10/11** |
| --- | --- | --- | --- | --- | --- |
| **Diameter (mm)** | 22.6 | 26.9 | 31.2 | 35.2 | 39.3 |

The tokens are printed in two different colors to easily differentiate clients who receive additional boxes under the USDA program. In the paper slip system, orders including special boxes were written as “2/2” or “10/10”. On plastic tokens, this would make the text much smaller, so the redundant number was exchanged for a plus sign.

The parts are all printed in basic PLA. Time will tell whether they hold up under summer heat, especially the sorting trays which are sometimes set in direct sunlight.
