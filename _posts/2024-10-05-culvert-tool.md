---
layout: post
title: "Culvert Tool — Internal Design Automation"
date: 2024-10-05
image: /assets/culvert-tool/sofistik-results.png
excerpt: "An internal tool for rapid structural design of box-culvert tunnel elements, chaining Excel, Grasshopper, SOFiSTiK, and MathCAD into one workflow."
---

![SOFiSTiK results, box-culvert element with earth pressure and spring supports](/assets/culvert-tool/sofistik-results.png)

An internal Ramboll tool for the rapid structural design of a concrete box-culvert element. The computational design workflow connects Excel, Grasshopper, SOFiSTiK, and MathCAD together via API calls, so engineers who don't use Grasshopper can still drive it from a spreadsheet.

Parameters flow from Excel into Grasshopper, which builds the structural model, runs the FE analysis in SOFiSTiK, and feeds results into more than 15 MathCAD design sheets - replacing a manual work and reducing errors.

## Tools

Rhino · Grasshopper (Python components) · Excel · SOFiSTiK · MathCAD (API integration)
