# Embroiderly Yours — spec/family website build

> Read the master playbook first: `..\Website Business\PLAYBOOK-building-client-sites.md`

## What this is

A website for **Embroiderly Yours**, the machine-embroidery + sewing business of
**Lily Johns**. Requested by **Sarah Smith** (co-owner of It's Already Done Web
Co.) — Lily is Sarah's **sister-in-law**, so this is a *family* build, not a cold
spec target. Tone/framing differ from cold specs accordingly (confirm with Sarah
whether it's a surprise or Lily is collaborating before choosing the
disclaimer/CTA wording).

Source of truth so far: the business's **public Facebook group**
(`facebook.com/groups/518523663008376`, 808 members, created Oct 14, 2022).
Facebook is login-walled; content was captured from the logged-out public view
via `Website Business/tools/fb-peek.mjs` (headless Chrome + CDP).

## Owner & story (from Lily's own FB "about me" post, Apr 10 2026 — see assets/research/fb-story-text.png)

- **Owner:** Lily Johns — "the face behind Embroiderly Yours." Registered Nurse.
- **Family:** husband **Joseph** ("married to my best friend"); daughter
  **Harleigh Mae**; **3 sphynx cats** (Buffy, Poppy, Winnie); **3 dogs** (Scout,
  Cali, Puppy). (Per Sarah: runs the business for extra income while staying home
  more with her daughter.) Family names are from her own public post — safe to
  reference warmly, but keep the daughter's mentions gentle/optional.
- **Origin (her words):** was at **IUK (Indiana University Kokomo)** studying to
  be a Registered Nurse, worked at **Hobby Lobby** in her free time. Started with
  **hand embroidery** for about a year, then was **gifted an embroidery machine
  for Christmas** — "that is when things started picking up!" Has since invested
  in **two embroidery machines and a DTF machine**. Also does **vinyl** and
  **sewing** (quilt-cross sweatshirts, a quilted purse w/ plush bow, June 2026).
  NOTE: her shorter "About this group" blurb says she upgraded because of "SOOO
  many orders" — minor variance; use the softer "it took off" framing, don't
  assert a single hard cause.
- **Her values (verbatim-ish):** "I don't just make items — I put care, time, and
  heart into every single piece." Personal, honest communication, attention to
  detail; "your support helps support my family." "If you're looking for something
  custom, thoughtful, and made with love, I'd be honored to create it for you."
- Business ~3 years old (group created Oct 2022). Active (7 posts last month).

## Products & pricing (verbatim from her FB About — "BASE prices, may increase depending on design")

**DTF items start at:**
- Short sleeve t-shirt — $20
- Long sleeve t-shirt — $25
- Crewneck — $30
- Hoodie — $35

**Embroidery items start at:**
- Crewneck — $35
- Hoodie — $40

- Adding embroidery to the **sleeve** of a sweatshirt: **+$5**
- Custom / other projects (sewn goods, bags, etc.): **project-by-project quote**

Wording rule: present these as **starting/base prices** ("from $X"), always
paired with "final price depends on the design" — that's how Lily frames it.

## What she actually makes (from real photos Sarah sent — assets/*.jpg)

Her signature is **personalized appliqué lettering** (fabric-filled letters) and
**embroidered names/monograms** on sweatshirts, crewnecks & hoodies:
- **Family / grandparent names:** MAMA (goose gingham, mallard, striped), MIMI,
  LOLA, NAUNA, GIGI, PAPA, PAWPAW, BUSCIA — real pieces on file.
- **Profession:** NURSE (daisy floral appliqué), embroidered nurse-icon sleeves
  (cap, stethoscope, EKG heart, band-aid).
- **Wedding sets:** BRIDE/GROOM, HUBBY/WIFEY (with Mr/Mrs script + sleeve dates,
  "est. 2026").
- **Baby / newborn:** knit rompers & outfits with script names ("going home to
  meet Ace" + paw print), name+heart sets.
- **Split-name "cloud" designs** (many family names clustered around a title).
- **DTF** printed apparel, **vinyl**, and **sewn goods** (quilt-cross sweatshirts).
Real photo files: nurse-daisy, mama-goose, mama-mallard, mama-stripe, wifey-floral,
hubby-wifey, baby-ace, baby-names, nurse-icons, grandparent-stack (.jpg in assets/).
Her **family brand illustration** (assets/family-illustration.png, cropped from FB)
= embroidered-style art of Lily+Joseph, baby, 3 sphynx cats, corgi + 2 pit bulls,
"Embroiderly Yours" script — great for the About page.
Atmospheric placeholders (Gemini): assets/hero.png (flatlay) + assets/workspace.png.

## Brand / design direction (from her real logo)

Her logo (`assets/research/profile-logo.jpg`, her FB profile pic — her actual
brand mark): an **embroidered wreath** on **cream cross-stitch (aida) linen** —
brown thread lettering "Embroiderly Yours / Lily Johns", ringed by a mustard
flower, dusty-rose blooms, **red-capped mushrooms**, sage leaves, dusty-blue
sprigs. Pure **cottagecore**: floral, earthy, homespun.

Palette pulled from the logo:
- Cream linen `#f3ecd9` (paper/background)
- Walnut/brown thread `#5b4a33` (text)
- Goldenrod `#d6a13a`
- Dusty rose / terracotta `#d3826f`
- Mushroom rust-red `#ad4a30`
- Sage/olive `#74814a`
- Dusty blue `#6c89a4` (accent)

Signature motif ideas: embroidered-wreath frames, a cross-stitch/aida-cloth
texture, running-stitch dashed dividers, mushroom + floral spot illustrations.
Display font: a warm humanist serif or gentle hand/script (e.g. Fraunces soft
optical, or a cottage script for headings) + clean serif/sans body. **Must not
reuse a prior site's font+palette combo** (see playbook style registry).

## Assets on hand

- `assets/research/profile-logo.jpg` — her real logo (480px, from FB). Good enough
  to place on the site; ask Sarah/Lily for a higher-res original if available.
- `assets/research/cover-banner-screenshot.png` — screenshot of her FB cover
  (same art, washed out) — reference only.

## Decisions (from Sarah, 2026-07-12)

1. **This is a SURPRISE for Lily.** Build it as a gift/preview to show Sarah (and
   then Lily) — not published publicly as "official" until Lily has seen it and
   okayed the content. Keep a gentle "preview built for Lily" note rather than the
   cold-spec "not affiliated" disclaimer — this IS being built *for* her.
2. **Contact = Facebook group** (`facebook.com/groups/518523663008376`). Route all
   "order / ask about custom" CTAs there. Text number + quote form are FUTURE
   (design the layout so they can drop in later).
3. **Location: Russiaville, Indiana** (Howard County, near Kokomo). Use for local
   flavor only — no home address.
4. **Real product photos:** Sarah is gathering them. Build now with her logo +
   styled cottagecore placeholder imagery; swap in real photos when they arrive.

## Still nice to have later
- Higher-res original logo file (current is 480px from FB).

## Build notes

- Follow playbook pipeline: research (done) → scaffold → design → imagery →
  pages → verify → ship → portfolio → pitch.
- Analytics: add to `Website Business/tools/add_analytics.py` SITES list.
- Repo target: `flylow3d/embroiderly-yours`, GitHub Pages, relative links only.
- **Family build:** do not publish anything Lily wouldn't want public; confirm
  before shipping/pitching.
