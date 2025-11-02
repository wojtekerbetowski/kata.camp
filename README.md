# Kata Camp

Static site for Kata Camp events and mission, built with Eleventy and deployed on Cloudflare Pages.

## Build

- Dockerized build:
  - `bin/docker-build.sh` (runs install + `yarn build` in a Node container)
- Output directory: `public/`

## Local test

- `bin/test.sh` ensures the build succeeds and checks main content markers.

## Content structure

- Homepage: `src/index.md` (mission and events)
- About: `src/about.md`
- Site data: `src/data/site.json`

## Deploy (Cloudflare Pages)

- Build command: `yarn build`
- Output directory: `public`
- Wrangler (optional): see `wrangler.jsonc`

## License

MIT
