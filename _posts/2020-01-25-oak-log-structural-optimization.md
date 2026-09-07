---
layout: post
title: "Structural Design Optimization with a Stock of Naturally Shaped Oak Logs"
date: 2020-01-25
highlight: 2
image: /assets/oak-log-optimization/thumbnail.png
excerpt: "My master's thesis: a genetic algorithm that assigns naturally curved oak logs from a limited stock to a structural topology, balancing structural stiffness against architectural intent."
---

![Optimized branching frame built from a stock of naturally curved oak logs](/assets/oak-log-optimization/cover.png)

This was my master's thesis project at Aarhus University. It grew out of two things I wanted to combine: an interest in using naturally shaped, low-waste timber instead of straight milled beams, and a curiosity about whether a genetic algorithm could handle the combinatorial mess that creates.

## The problem

Naturally curved oak logs which normally discarded as waste, can replace straight structural elements if their shape is used deliberately instead of milled away. But every log in a stock is a different shape, and a structure built from them has to solve two problems at once: which log goes in which position, and whether the resulting structure is still both architecturally intended and structurally sound.

With even a modest stock, checking every possible assignment by hand isn't feasible. The number of combinations explode, and every configuration needs its own structural evaluation.

![Stock of digitized naturally curved oak log elements](/assets/oak-log-optimization/oak-log-stock.jpg)
*A stock of oak log elements, digitized and available for assignment to the structure.*

## What I built

A structural and architectural design optimization tool that uses a genetic algorithm to search the assignment space directly. Each candidate solution - a chromosome - encodes one possible way of assigning stock elements to positions in a predefined structural topology, and the algorithm evolves a population of these assignments toward two competing objectives at once: minimizing deviation from a desired architectural geometry, and maximizing structural stiffness.

![Design optimization tool framework: input, pre-processing, genetic algorithm, and results](/assets/oak-log-optimization/framework.jpg)
*The tool's framework - from stock and target-geometry input, through custom-coded GA operators, to a finite element evaluation of every candidate.*

Because the elements are naturally crooked rather than straight, structural evaluation couldn't use standard straight-beam elements directly. I substructured each curved log into a series of straight Timoshenko beam elements, letting the finite element model approximate the true curved geometry closely enough to capture its structural behavior.

![Substructuring a curved log element into straight Timoshenko beam segments](/assets/oak-log-optimization/substructuring.jpg)
*A curved element approximated as a chain of straight sub-elements for the finite element analysis.*

There was no off-the-shelf FE software built for this problem, so I wrote my own finite element program in MATLAB: assembling stiffness matrices for Timoshenko beam elements, applying boundary conditions, and solving for displacements and compliance for every candidate the genetic algorithm generated.

<div class="gallery">
  <img src="/assets/oak-log-optimization/fe-elements-branching.png" alt="Numbered FE elements and node numbering for the branching frame topology">
  <img src="/assets/oak-log-optimization/fe-elements-arch.png" alt="Numbered FE elements and node numbering for the arch topology">
</div>
*Element and node numbering for the two topologies, as discretized in my own FE solver.*

The genetic algorithm itself needed custom-coded initialization, crossover, and mutation operators, since a standard encoding doesn't respect which log shapes actually fit which positions. Getting that encoding right was most of the work: an unconstrained assignment problem has a huge number of possible solutions.

## The result

Run against a branching frame topology and an arch, the tool converged on assignments that kept the stock elements close to their intended architectural form while improving structural stiffness beyond what a naive assignment would achieve — output as a Pareto front the designer can pick from, rather than a single "optimal" answer.

<div class="gallery">
  <img src="/assets/oak-log-optimization/result-arch.png" alt="Optimized arch built from assigned oak log elements">
  <img src="/assets/oak-log-optimization/result-tree.png" alt="Optimized branching frame built from assigned oak log elements">
</div>

*Two optimized results: an arch and a branching frame, each assembled from the same digitized stock of naturally curved elements.*

## Tools

MATLAB · Global Optimization Toolbox · Genetic Algorithm · Finite Element Analysis (Timoshenko beams)
