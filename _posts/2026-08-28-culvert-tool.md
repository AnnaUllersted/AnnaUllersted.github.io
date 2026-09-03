---
layout: post
title: "Culvert Tool — Internal Design Automation"
date: 2026-08-28
image: /assets/culvert-tool/sofistik-results.png
excerpt: "An internal tool for rapid structural design of box-culvert tunnel elements, chaining Excel, Grasshopper, SOFiSTiK, and MathCAD into one workflow."
---

![SOFiSTiK results, box-culvert element with earth pressure and spring supports](/assets/culvert-tool/sofistik-results.png)

An internal Ramboll tool for the rapid structural design of a specific concrete box-culvert element, built around a computational design workflow that integrates Grasshopper with Excel, SOFiSTiK, and MathCAD via API calls.

## The problem

Designing a box-culvert element means working through the same sequence every time: gather geometry and load inputs, build the structural model, run the FE analysis, then check and document the results against a design code. Doing this by hand in separate tools for every variant is slow, and most of the users who need to run it aren't Grasshopper users — they think in spreadsheets.

## What I built

A five-stage pipeline, each stage handing off to the next:

**1. Input from Excel** — parameters (geometry, materials, design basis) come from a spreadsheet rather than requiring Grasshopper knowledge, so structural engineers who've never opened Grasshopper can still drive the tool.

<div class="gallery">
  <img src="/assets/culvert-tool/excel-input.png" alt="Excel input sheet listing tool parameters">
  <img src="/assets/culvert-tool/grasshopper-input-parsing.png" alt="Grasshopper retrieving and sorting Excel input">
</div>
*Excel input sheet, and the Grasshopper definition that retrieves and sorts it.*

**2. Structural model in Grasshopper** — cross-sections, geometry, springs, and loads are built up from the parsed input.

![Rhino cross-section geometry with spring supports](/assets/culvert-tool/rhino-cross-section.png)
*Generated cross-section geometry with boundary springs.*

![Grasshopper definition grouped by earth pressure coefficients, springs, cross-sections, geometry, and loads](/assets/culvert-tool/grasshopper-structural-model.png)

**3. FE analysis in SOFiSTiK** — the Grasshopper definition writes SOFiSTiK Teddy files directly via the SOFiSTiK plugin, with custom Python components handling the elements the plugin doesn't cover natively.

![Grasshopper definition generating SOFiSTiK Teddy scripts](/assets/culvert-tool/grasshopper-sofistik-teddy.png)

**4–5. Post-processing and design** — results are pulled back from SOFiSTiK and fed, via an API connection, into more than 15 pre-built MathCAD design sheets, populating the design checks automatically instead of by hand.

![MathCAD connector component in Grasshopper](/assets/culvert-tool/mathcad-connector.png)
*Custom Grasshopper component calling MathCAD directly for design checks.*

<div class="gallery">
  <img src="/assets/culvert-tool/mathcad-sheet-1.png" alt="MathCAD ultimate limit state calculation sheet">
  <img src="/assets/culvert-tool/mathcad-sheet-2.png" alt="MathCAD serviceability and crack width calculation sheet">
</div>
*The underlying MathCAD design sheets: ultimate limit state and serviceability checks, populated automatically from the FE results.*

## The result

<div class="gallery">
  <img src="/assets/culvert-tool/sofistik-results.png" alt="SOFiSTiK FE results with earth pressure and springs">
</div>

What used to be a manual, multi-tool process — build geometry, run FE, then hand-copy results into a design sheet — runs as one pipeline from an Excel input to a documented design check, open to engineers who don't work in Grasshopper day to day.

## Tools

Rhino · Grasshopper (Python components) · Excel · SOFiSTiK · MathCAD (API integration)
