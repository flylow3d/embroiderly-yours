#!/usr/bin/env bash
# Cottagecore placeholder imagery for Embroiderly Yours (swap in Lily's real photos later).
# Style anchor: photorealistic editorial craft photography, warm natural window light,
# cream linen surfaces, dusty-rose / sage-green / goldenrod / mushroom-rust palette.
# NO text, NO lettering, NO logos, NO people facing camera (avoids AI gibberish signage).
set -e
cd "$(dirname "$0")/.."

STYLE="photorealistic editorial craft photography, soft warm natural window light, shallow depth of field, cozy cottagecore styling on cream linen, earthy palette of dusty rose, sage green, goldenrod and mushroom rust. No text, no lettering, no logos, no visible brand names, no people facing the camera."

node tools/gen_image.mjs "Overhead cottagecore flatlay: a wooden embroidery hoop with a half-finished hand-embroidered wildflower design, neat rows of embroidery floss in dusty rose, sage, goldenrod and rust, a folded cream crewneck sweatshirt with embroidered flowers, tiny dried florals and a couple of small red-capped toadstool ornaments, scattered on a cream linen cloth. $STYLE" --out assets/hero.png --ar 16:9

node tools/gen_image.mjs "Close-up of a cream crewneck sweatshirt neatly folded, with a delicate machine-embroidered spray of wildflowers, ferns and a small mushroom on the chest, resting on cream linen with a sprig of dried flowers beside it. $STYLE" --out assets/embroidery.png --ar 4:3

node tools/gen_image.mjs "A soft earth-tone t-shirt folded on a warm wooden table, showing a colorful printed cottagecore floral graphic (smooth full-color print, like a DTF transfer), styled with dried flowers and a ceramic mug. $STYLE" --out assets/dtf.png --ar 4:3

node tools/gen_image.mjs "A handmade quilted fabric zip pouch and a small tote bag in floral cottagecore prints with a little plush bow accent, arranged on a cozy wooden shelf with a trailing houseplant. $STYLE" --out assets/sewn.png --ar 4:3

node tools/gen_image.mjs "A cozy home craft studio corner: a home embroidery machine, a pegboard of thread spools in earthy dusty-rose, sage and goldenrod tones, a small potted plant, folded blank sweatshirts in a basket, morning light through a window. $STYLE" --out assets/workspace.png --ar 4:3

node tools/gen_image.mjs "A wooden embroidery hoop holding cream fabric with an in-progress hand-embroidered floral wreath (flowers and leaves only, no letters), small gold scissors, a thimble and loose floss in earthy tones on cream linen. $STYLE" --out assets/custom.png --ar 4:3

echo "ALL IMAGES DONE"
