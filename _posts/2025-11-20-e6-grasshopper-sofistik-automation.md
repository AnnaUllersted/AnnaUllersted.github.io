---
layout: post
title: "E6 Bridges - Grasshopper-to-SOFiSTiK Automation"
date: 2025-11-20
highlight: 1
image: /assets/e6/k52-sofistik.png
excerpt: "A Grasshopper tool that turns a handful of bridge parameters directly into SOFiSTiK structural elements and loads — reused across three bridges on a Norwegian motorway."
---

![SOFiSTiK FE model, bridge K52](/assets/e6/k52-sofistik.png)

## Project and task description 

A large motorway project on the E6 near Trondheim, Norway, with several new bridge designs. My tasks covered the computational design workflow for parametric FE model creation across three bridges of the project, the structural design of a pedestrian bridge, and coordinating with the BIM team using a Single-Point-Of-Truth approach to keep the FE and BIM models aligned.

## What I built

A Grasshopper tool that takes basic bridge data (cross-sections, pier layout, alignment) as input and generates the full model automatically: 3D geometry, structural elements, dead loads, traffic loads, wind loads, collision loads, and abutment loads, all wired to code by the same definition so changes are incorporated easily. The SPOT approach means the same generated geometry feeds both the FE model and the BIM model, so the two can't drift apart.

![Workflow: BIM input to cross-sections, geometry, SOFiSTiK elements, and loads](/assets/e6/workflow.png)
*Input → cross-sections → geometry → structural elements → loads*

![Grasshopper definition for K54, with labelled sections for cross-sections, geometry, SOFiSTiK structural elements, and each load type](/assets/e6/k54-grasshopper-detailed.png)
*The grasshopper definition: input through cross-sections, geometry, structural elements, and every load case — dead, traffic, wind, collision, abutment — down to the exported SOFiSTiK Teddy files.*

## The result

Running the same tool against different input parameters produces consistent, ready-to-analyse models for several bridges on the route or incorporate changes immediately.

<div class="gallery">
  <img src="/assets/e6/k54-support-model.png" alt="K54 support and spring conditions">
  <img src="/assets/e6/k54-sofistik.jpg" alt="K54 SOFiSTiK FE model">
</div>
*Pedestrian bridge crossing a motorway intersection — generated support/spring conditions and the resulting SOFiSTiK FE model, a pedestrian bridge crossing the motorway junction.*

<div class="gallery">
  <img src="/assets/e6/k52-rhino.png" alt="K52 Rhino geometry">
  <img src="/assets/e6/k52-sofistik.png" alt="K52 SOFiSTiK FE model">
</div>
*Motorway bridge — one of the two elliptical motorway bridges, from the same tool.*

Each bridge that would previously need its own model built from scratch instead comes from the same definition, keeping modelling assumptions consistent, keeping the FE and BIM models in sync, and saving time.

## Tools

Rhino · Grasshopper · SOFiSTiK · Tekla Structures
