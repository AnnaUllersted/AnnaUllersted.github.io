---
layout: post
title: "Fehmarnbelt (Femern) Tunnel — FE Model Automation"
date: 2026-08-26
excerpt: "A Python tool for generating finite element models at the scale of an immersed-tunnel project, where the same structural logic repeats across many segments."
---

## The problem

A project the scale of the Fehmarnbelt immersed tunnel involves many structurally similar elements across its length. Building each one as a separate, manually constructed FE model doesn't scale — it's slow, and small inconsistencies between models become hard to track down as the number of models grows.

## What I built

A Python-based tool that automates finite element model creation: given a set of structural and geometric parameters, it generates a complete, consistent FE model rather than requiring one to be built by hand for every case.

## The result

Models that share the same underlying logic are generated the same way every time, which cuts down the manual modelling effort per element and reduces the risk of one-off mistakes that come from rebuilding similar models by hand.

## Tools

Python · finite element analysis software

*Note: this write-up covers my own tooling and approach only — no client drawings, load data, or other project-specific deliverables.*
