#!/bin/sh
# Wrap the game page (as published on claude.ai) with a standalone <head> for GitHub Pages.
# usage: sh build-page.sh path/to/source/index.html
{
cat <<'HEAD'
<!doctype html>
<html lang="ja">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">
<meta name="description" content="海の上を飛びながら、AIアシスタントと記憶を思い出すチルなトレーニングゲーム。">
<!-- added to the home screen it opens as a full-screen app, with no browser bars -->
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
<meta name="apple-mobile-web-app-title" content="ドパガキ">
<meta name="theme-color" content="#0a0e18">
<link rel="apple-touch-icon" href="icon-180.png">
<link rel="icon" href="icon-192.png">
<link rel="manifest" href="manifest.webmanifest">
HEAD
grep -v 'claude:viewport-fit-sides' "$1"
} > index.html
