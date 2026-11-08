#!/bin/sh
# Wraps the game page, which carries no document skeleton, into dist/index.html for Netlify.
# Its own title, links and styles stay in the head because the browser opens the body only at the first page element.
# The badge gap lifts the inventory bar above the Netlify badge at the bottom right, whose top edge sits 56px above the screen edge.
set -e
mkdir -p dist
{
  printf '%s\n' '<!doctype html>' '<html lang="de">' '<head>' '<meta charset="utf-8">' \
    '<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">' \
    '<meta name="theme-color" content="#111b17">' \
    '<style>:root { --host-badge-gap: 56px; }</style>'
  cat pruefstufe-lebensmuede.html
  printf '%s\n' '</html>'
} > dist/index.html
