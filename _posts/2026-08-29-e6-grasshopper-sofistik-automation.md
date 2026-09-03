---
layout: post
title: "E6 Bridges — Grasshopper-to-SOFiSTiK Automation"
date: 2026-08-29
image: /assets/e6/k52-sofistik.png
excerpt: "A Grasshopper tool that turns a handful of bridge parameters directly into SOFiSTiK structural elements and loads — reused across three bridges on a Norwegian motorway."
---

![SOFiSTiK FE model, bridge K52](/assets/e6/k52-sofistik.png)

A large motorway project on the E6 near Trondheim, Norway, with three bridges: K54, a pedestrian bridge, and K52 and K53, a pair of elliptical motorway bridges. My tasks covered the computational design workflow for parametric FE model creation across all three, the structural design of the K54 pedestrian bridge, and coordinating with the BIM team using a Single Point Of Truth (SPOT) approach to keep the FE and BIM models aligned.

## The problem

A road project like the E6 involves multiple bridges that share the same design logic — cross-sections, piers, and loading — but differ in span, curvature, and geometry from one location to the next. Building each bridge's structural model by hand in SOFiSTiK means repeating the same modelling steps over and over, with every repetition a new chance for inconsistency between bridges, and no guarantee that the FE model and the BIM model stay in sync as either changes.

## What I built

A Grasshopper tool that takes basic bridge data (cross-sections, pier layout, alignment) as input and generates the full model automatically: 3D geometry, SOFiSTiK structural elements (via AQUA, SOFiMSHC), and loads (via SOFiLOAD) — dead loads, traffic loads, wind loads, collision loads, and abutment loads, all wired to code by the same definition rather than rebuilt per bridge. The SPOT approach means the same generated geometry feeds both the FE model and the BIM model, so the two can't drift apart.

![Workflow: BIM input to cross-sections, geometry, SOFiSTiK elements, and loads](/assets/e6/workflow.png)
*Input → cross-sections → geometry → SOFiSTiK structural elements → loads: one pipeline, run per bridge.*

![Grasshopper definition for K54, with labelled sections for cross-sections, geometry, SOFiSTiK structural elements, and each load type](/assets/e6/k54-grasshopper-detailed.png)
*The K54 Grasshopper definition: input through cross-sections, geometry, SOFiSTiK structural elements, and every load case — dead, traffic, wind, collision, abutment — down to the exported SOFiSTiK Teddy files.*

## The result

Running the same tool against different input parameters produces consistent, ready-to-analyse models for each bridge on the route.

<div class="gallery">
  <img src="/assets/e6/k54-support-model.png" alt="K54 support and spring conditions">
  <img src="/assets/e6/k54-sofistik.jpg" alt="K54 SOFiSTiK FE model">
</div>
*Bridge K54 — generated support/spring conditions and the resulting SOFiSTiK FE model, a pedestrian bridge crossing the motorway junction.*

<div class="gallery">
  <img src="/assets/e6/k52-rhino.png" alt="K52 Rhino geometry">
  <img src="/assets/e6/k52-sofistik.png" alt="K52 SOFiSTiK FE model">
</div>
*Bridge K52 — one of the two elliptical motorway bridges, from the same tool.*

Each bridge that would previously need its own model built from scratch instead comes from the same definition, keeping modelling assumptions consistent across the route, keeping the FE and BIM models in sync, and freeing up time for the engineering judgement calls that don't automate.

## Tools

Rhino · Grasshopper · SOFiSTiK (AQUA · SOFiMSHC · SOFiLOAD) · Tekla Structures
