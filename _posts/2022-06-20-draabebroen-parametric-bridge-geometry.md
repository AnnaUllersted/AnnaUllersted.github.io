---
layout: post
title: "Dråbebroen — Parametric Bridge Geometry"
date: 2022-06-20
image: /assets/draabebroen/thumbnail.jpg
excerpt: "A parametric Grasshopper model that drives a double-curved pedestrian bridge geometry straight through to FE analysis and fabrication models — in Rhino, SOFiSTiK, Tekla, and Robot."
---

Dråbebroen is a steel pedestrian and cycle bridge with wood cladding, designed in collaboration with an architect and an artist. My role covered the parametric design of the bridge geometry in Rhino/Grasshopper, ownership of the computational design workflow end to end, structural steel design, and dynamic analysis.

A parametric Grasshopper model generates the bridge's full 3D geometry from a small set of design parameters - plan curvature, longitudinal profile, and cross-section shape - and pushes it to the tools the project needed: Autodesk Robot for structural analysis and Tekla for the fabrication model.

![Software workflow: Rhino/Grasshopper to SOFiSTiK, Robot, and Tekla](/assets/draabebroen/software-workflow.jpg)
*One parametric model, three downstream tools: SOFiSTiK and Robot for structural analysis, Tekla for fabrication.*

Because the geometry, analysis model, and fabrication model all trace back to the same parameters, a change made once propagates everywhere instead of being redone by hand in three different pieces of software. This  lets the team test more geometric variants and keep the structural and fabrication models aligned with the architecture throughout design development.

![Multi-software comparison overview](/assets/draabebroen/multi-software-overview.png)
*Grasshopper definition, structural mesh, Tekla model, and FE model side by side.*

## Tools

Rhino · Grasshopper · BoHm · Autodesk Robot Structural Analysis · Tekla Structures
