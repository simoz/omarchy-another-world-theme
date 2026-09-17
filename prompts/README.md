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
