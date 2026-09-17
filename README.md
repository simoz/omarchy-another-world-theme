# Another World · Omarchy 4

A cinematic theme for Omarchy inspired by Another World: remote alien landscapes, midnight laboratories and the green glow of a terminal.

[![Arrival at the laboratory — Another World wallpaper](docs/previews/hero.jpg)](backgrounds/00-arrival-4k.png)

## Backgrounds

Five wallpapers, all native 3840 × 2160. Click a preview to open the full-resolution PNG.

| | | |
| --- | --- | --- |
| [![Arrival](docs/previews/00-arrival-4k.jpg)](backgrounds/00-arrival-4k.png)<br>Arrival | [![The Laboratory](docs/previews/laboratory-4k.jpg)](backgrounds/laboratory-4k.png)<br>The Laboratory | [![Alien Landscape](docs/previews/alien-landscape-4k.jpg)](backgrounds/alien-landscape-4k.png)<br>Alien Landscape |
| [![Underground Escape](docs/previews/underground-escape-4k.jpg)](backgrounds/underground-escape-4k.png)<br>Underground Escape | [![Alien City at Twilight](docs/previews/alien-city-4k.jpg)](backgrounds/alien-city-4k.png)<br>Alien City at Twilight | |

Arrival is the theme's main artwork and the first wallpaper in its sorted collection. The installed collection contains only these five 4K wallpapers.

[Complete scene prompts and generation settings](prompts/README.md) are included.

## Inspiration

Released in 1991, **Another World** was created by **Éric Chahi** and published by **Delphine Software**. Known as *Out of This World* in North America, it follows scientist Lester Knight Chaykin after an experiment transports him to an unfamiliar planet.

Angular silhouettes, monumental architecture and small figures against vast landscapes recall its cinematic Amiga artwork. Midnight blues and alien teals carry through the collection, with phosphor green drawn from Lester's laboratory terminal. The interface palette stays consistent as wallpapers change.

## Installation

Once this version has been published, run on your Omarchy 4 machine:

```sh
omarchy theme install https://github.com/simoz/omarchy-another-world-theme
```

You can also enter the repository URL under **Install > Style > Theme**. To switch back, select your previous theme from Omarchy's theme menu.

<details>
<summary>Try a local checkout before publication</summary>

Copy `colors.toml`, `icons.theme` and the `backgrounds/` directory into `~/.config/omarchy/themes/another-world`, then run:

```sh
omarchy theme set another-world
```

</details>

## Palette

![Another World palette](docs/palette.svg)

| Role | Color |
| --- | --- |
| Midnight background | `#0b1826` |
| Blue surfaces | `#142b3e` |
| Pale blue-gray text | `#c5d8dc` |
| Phosphor-green accent | `#9cce6a` |
| Deep teal selection | `#23465a` |
| Secondary text | `#829da9` |
| Alien teal | `#75bdbb` |
| Laboratory blue | `#7baacb` |
| Twilight orange | `#d9996a` |

`colors.toml` contains the theme palette, including bright terminal variants. `icons.theme` selects `Yaru-prussiangreen`.

Opaque-color contrast: primary text **12.13:1** on the background; primary text **6.79:1** on selection. Transparency and application customizations may change these results.

## Compatibility

Uses the [Omarchy 4 central palette format](https://omarchy.org/manual/making-your-own-theme/). Omarchy generates application configurations from `colors.toml`.

Palette syntax, text contrast and image dimensions have been checked locally. The theme still needs a visual check in a live Omarchy session; the images above show the artwork, not desktop screenshots.

## Image credits

Artwork created with OpenAI image generation. The five 4K wallpapers are native **3840 × 2160**, with no post-generation upscaling. Gallery previews are reduced copies.

The [social card](social-card.jpg) uses Arrival with the theme title, sized at 1280 × 640 and under 1 MB. Its [complete prompt](prompts/social-card.txt) is included.

An unofficial fan tribute to Éric Chahi and Delphine Software. Another World and its characters belong to their respective rights holders. This project is not affiliated with or endorsed by the original creators.
