---
title: "Testing math on the new blog"
subtitle: "Inline math, display equations, and aligned blocks, rendered with MathJax."
date: 2026-10-03
tags: [meta]
published: false # math rendering test; set to true to view it locally or publish it
---

This post checks that math renders correctly. Inline math with dollar signs: the elasticity $\varepsilon = \frac{\partial \ln q}{\partial \ln p}$ sits inside a sentence. Inline math with subscripts and stars, using double dollars to keep Markdown away from the underscores: $$x_{it}^* = \alpha_i + \beta x_{i,t-1}$$.

A display equation goes on its own lines, with blank lines around it:

$$
Y_{ij} = \frac{Y_i \, Y_j}{Y_W} \left( \frac{\tau_{ij}}{\Pi_i P_j} \right)^{1-\sigma}
$$

An aligned block, numbered automatically:

$$
\begin{align}
\max_{c_t,\, k_{t+1}} \quad & \mathbb{E}_0 \sum_{t=0}^{\infty} \beta^t u(c_t) \\
\text{s.t.} \quad & c_t + k_{t+1} = f(k_t) + (1-\delta) k_t
\end{align}
$$

And a reference back to it: the first-order condition of equation \eqref{eq:euler} below.

$$
\begin{equation}
u'(c_t) = \beta \, \mathbb{E}_t \left[ u'(c_{t+1}) \left( f'(k_{t+1}) + 1 - \delta \right) \right]
\label{eq:euler}
\end{equation}
$$
