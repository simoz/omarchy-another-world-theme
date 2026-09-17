# 4K wallpaper generation

The five `*-4k.txt` files preserve the complete prompts. `wallpapers-4k.jsonl` contains the same prompts and the exact requested API parameters. These are new interpretations of the existing scenes, generated from text; the earlier PNGs are not uploaded as image inputs.

- API: OpenAI Images, generations endpoint
- Model: `gpt-image-2`
- Size: `3840x2160` (16:9), requested directly from the API, no local upscaling
- Quality: `high`
- Format: PNG, one image per scene
- Prompt augmentation: disabled, so the saved prompts are sent verbatim
- 4K output is experimental according to the bundled imagegen API reference.

Run with the Codex imagegen CLI, with `OPENAI_API_KEY` set locally:

```sh
uv run --with openai --with pillow python \
  "$HOME/.codex/skills/.system/imagegen/scripts/image_gen.py" generate-batch \
  --input prompts/wallpapers-4k.jsonl \
  --out-dir output/imagegen --concurrency 2 --max-attempts 1 --no-augment
```

The command makes paid API requests. Existing outputs are not overwritten. Generation is nondeterministic: identical prompts do not guarantee identical images.

## Social card

[Social card](../social-card.jpg): Arrival artwork with the theme title, 1280 × 640 JPEG, 176,077 bytes (under 1 MB). Revised using the supplied GitHub template to keep all typography within its safe area. Generated through the Images edits API using `gpt-image-2`, then compressed locally without resizing or cropping. The [complete prompt](social-card.txt) and [generation/export parameters](social-card-manifest.json) are preserved. The previous prompt remains in [social-card-v1.txt](social-card-v1.txt).

## Unlock emblem

[Complete prompt](unlock-terminal.txt) · [Generation and processing parameters](unlock-terminal-manifest.json)

Generated through the OpenAI Images API with `gpt-image-2`, high quality, at 1024 × 1024. The flat magenta background was converted to alpha with the imagegen chroma-key helper. The transparent result was trimmed and reduced to 344 × 300 for `unlock.png`.

`preview-unlock.png` uses the [official Omarchy Plymouth preview layout](https://github.com/omacom/omarchy/blob/quattro/bin/omarchy-plymouth-preview) and its entry, lock and bullet assets. Only file copying and the final viewer launch were adapted for macOS. It is a rendered preview, not a captured boot session.

About and screensaver artwork are hand-built Unicode block silhouettes, not AI-generated images; their SVG previews visualize the text artwork. Desktop captures were supplied separately from Try Omarchy; provenance is saved in [capture.json](../docs/screenshots/capture.json).
