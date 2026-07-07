# Purpose

## What It Is

Example repo skeleton: che template rendering, `che.yml`, `.env` secrets, generated Makefile docs, agent files.

## Why It Exists

Example repo showing the templates convention.

## Goals

- Show the `che.yml` wiring for `.env` and agent files.
- Show the `templates/` layout: `1-env`, `2-data`, `3-audience`.

## How To Use

`make render-templates` renders `*.repo.tpl` onto the repo: `.env` (op:// refs resolved), `assets/data/makefile.agents.md`, `CLAUDE.md`, `AGENTS.md`.

## Future Direction

Static example, tracks the convention.
