---
layout: post
title: "Dråbebroen — Parametric Bridge Geometry"
date: 2026-08-30
image: /photos/Dråbebroen 2.jpg
---

![cover](/photos/Dråbebro 1.jpg)

## The problem

Dråbebroen's design geometry is architecturally complex — a form that doesn't reduce to standard, repeatable bridge sections. Modelling this by hand in a conventional CAD/analysis workflow would mean manually rebuilding geometry every time a design parameter changed, making iteration slow and error-prone.

## What I built

A parametric Grasshopper model that generates the bridge's geometry directly from a small set of design parameters (span, curvature, deck profile, etc.), keeping the architectural form and the structurally rational geometry linked throughout design development.

*[Add 2–3 screenshots here: the Grasshopper definition, a render of the resulting geometry, and/or a before/after or variant comparison.]*

## The result

Design changes that would previously require manual rebuilding could be explored in minutes rather than days, letting the team test more geometric variants and catch structural issues earlier.

## Tools

Rhino · Grasshopper · [add any structural analysis / FE tools used alongside]
