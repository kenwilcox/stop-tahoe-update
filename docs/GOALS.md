# 🎯 Project Goals — Stop Tahoe Update

## Primary Objectives

1. **Delay or hide major macOS upgrades safely**

   - Provide signed `.mobileconfig` profiles for 30 / 60 / 90 days.
   - Build CLI utilities for safe installation, removal, and validation.

2. **Reduce upgrade pressure**

   - Suppress or mitigate “Install Tonight” prompts and badge counts.
   - Detect and handle downloaded installers responsibly.

3. **Empower the community**
   - Maintain a transparent, verified knowledge base.
   - Crowdsource reproducible findings and safe experiments.

---

## Secondary Objectives

- 🧩 Develop modular “shields” (user-space LaunchAgents) for early detection.
- 🔍 Track new Apple configuration keys, policies, and limitations across macOS releases.
- 🧠 Build educational docs explaining _why_ upgrades can’t yet be fully blocked and where user control can improve.
- 🧱 Foster open collaboration between sysadmins, power users, and developers.

---

## Measurable Outcomes

| Metric                                                                      | Target               |
| --------------------------------------------------------------------------- | -------------------- |
| % of users reporting zero unwanted installer prompts during deferral window | >90%                 |
| Verified reports of silent installer downloads per release                  | Downtrend            |
| Number of community-tested safe methods                                     | Continuous growth    |
| Time to verify new macOS major upgrade behavior                             | <7 days post-release |

---

## Non-Goals

- ❌ Root-level hacks or system modifications outside Apple-supported mechanisms
- ❌ Background daemons or automatic scripts that run without user consent
- ❌ “Set and forget” tools — user approval must remain central
- ❌ Anything irreversible or difficult to audit

---

## Long-Term Vision

Evolve into a broader initiative — **Stay on macOS version** — providing:

- Version-agnostic controls to stay on any macOS release.
- Verified research into declarative MDM and update control frameworks.
- A safe, trusted reference for individuals and orgs who want autonomy over their macOS update cadence.
