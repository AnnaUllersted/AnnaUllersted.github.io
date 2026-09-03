---
layout: post
title: "Dråbebroen — Parametric Bridge Geometry"
date: 2026-08-30
image: /assets/draabebroen/cover.jpg
excerpt: "A parametric Grasshopper model that drives a double-curved pedestrian bridge geometry straight through to FE analysis and fabrication models — in Rhino, SOFiSTiK, Tekla, and Robot."
---

![Dråbebroen rendering](/assets/draabebroen/cover.jpg)

Dråbebroen is a steel pedestrian and cycle bridge with wood cladding, designed in collaboration with an architect and an artist. My role covered the parametric design of the bridge geometry in Rhino/Grasshopper, ownership of the computational design workflow end to end, structural steel design, and dynamic analysis.

## The problem

Dråbebroen's double-curved form is an architectural one — it doesn't reduce to a standard, repeatable bridge section. Built by hand in a conventional CAD/analysis workflow, that geometry would need to be rebuilt from scratch every time a design parameter changed, making iteration slow and error-prone, and making it hard to keep the architectural form and the structural model consistent with each other.

## What I built

A parametric Grasshopper model that generates the bridge's full 3D geometry from a small set of design parameters — plan curvature, longitudinal profile, and cross-section shape — and pushes it straight into the downstream tools the project needed: SOFiSTiK and Autodesk Robot for structural analysis, and Tekla for the fabrication model.

![Grasshopper definition](/assets/draabebroen/grasshopper-definition.png)
*The Grasshopper definition: cross-section, path curves, and surface generation feeding the analysis and fabrication toolchain.*

![Cross-section and geometry iterations](/assets/draabebroen/geometry-iterations.png)
*Cross-section development and geometry variants generated from the same parametric definition.*

Because the geometry, analysis model, and fabrication model all trace back to the same parameters, a change made once propagates everywhere — instead of being redone by hand in three different pieces of software.

![Software workflow: Rhino/Grasshopper to SOFiSTiK, Robot, and Tekla](/assets/draabebroen/software-workflow.jpg)
*One parametric model, three downstream tools: SOFiSTiK and Robot for structural analysis, Tekla for fabrication.*

## The result

<div class="gallery">
  <img src="/assets/draabebroen/rhino-fe-model.png" alt="SOFiSTiK/Rhino shell model">
  <img src="/assets/draabebroen/robot-fe-model.png" alt="Autodesk Robot FE model">
  <img src="/assets/draabebroen/tekla-model.png" alt="Tekla fabrication model">
</div>

*The same parametric geometry as a SOFiSTiK shell model, an Autodesk Robot FE model, and a Tekla fabrication model.*

Design changes that would previously require manually rebuilding geometry in three separate programs could instead be explored in minutes, letting the team test more geometric variants and keep the structural and fabrication models aligned with the architecture throughout design development.

![Multi-software comparison overview](/assets/draabebroen/multi-software-overview.png)
*Grasshopper definition, structural mesh, Tekla model, and FE results side by side — one source of geometry, four tools.*

## Tools

Rhino · Grasshopper · SOFiSTiK · Autodesk Robot Structural Analysis · Tekla Structures
