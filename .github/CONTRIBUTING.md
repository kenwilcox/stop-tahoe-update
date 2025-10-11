# 🤝 Contributing to Stop Tahoe Update

Thank you for helping make macOS update control safer and more transparent.  
This project is 100% community-driven — your contributions make the difference.

---

## 🧩 Contribution Principles

1. **Safety first** — no code that can auto-modify, auto-delete, or escalate privileges without explicit user action.
2. **Transparency** — everything must be explainable and inspectable.
3. **Reversibility** — users must be able to undo any change with a single command.
4. **Verification** — all installable artifacts require a reproducible test and supporting documentation.

---

## 💡 Types of Contributions

| Type             | Description                                                             |
| ---------------- | ----------------------------------------------------------------------- |
| 🧠 Research      | Test or document macOS upgrade behavior, preferences, or deferral keys. |
| ⚙️ Code          | Add or improve scripts, profiles, or plugins.                           |
| 🧩 Experiment    | Propose a new shield (e.g., LaunchAgent) via an RFC.                    |
| 🧾 Documentation | Improve clarity, safety notices, or troubleshooting guides.             |
| 🧰 Tooling       | Add CI jobs, validation, or signing helpers.                            |

---

## 🧱 How to Contribute

1. **Fork** the repository.
2. **Create a feature branch**:
   ```bash
   git checkout -b feature/my-new-plugin
   ```
3. **Test locally**:

   - Run `./scripts/status.sh` to verify current state.
   - Validate XML: `plutil -lint profiles/*.mobileconfig`
   - Check shell scripts: `shellcheck scripts/*.sh`

4. **Open a Pull Request** describing:

   - Purpose and expected outcome
   - Supported macOS versions tested
   - Any known limitations or side effects
   - How to disable or undo your change

5. All PRs adding installable code require:

   - ✅ Review from a CODEOWNER
   - ✅ Supporting Apple or vendor documentation
   - ✅ CI validation passing

---

## 🧠 Experimental Features (RFC Process)

Before adding new scripts or LaunchAgents:

1. Create a doc in `docs/rfcs/` using the `rfc-template.md` format.
2. Label your PR with `proposal` and link relevant system logs, tests, or screenshots.
3. Experiments are **dry-run by default** and must log all actions.
4. After review, they’re merged under `plugins/` with a clear README.

---

## 🧾 Code Style

- Bash scripts: strict mode (`set -euo pipefail`)
- No hardcoded user paths — use `$HOME`
- Prefer `osascript` for user-facing dialogs
- Use `printf` over `echo` for predictability
- Document environment variables at the top of each script

---

## 🛡️ Safety Checklist (for reviewers)

Before merging:

- [ ] No auto-execution or background persistence
- [ ] Clear user prompts for any system change
- [ ] Reversible (has uninstall instructions)
- [ ] No network calls unless explicitly required
- [ ] References a trusted Apple/vendor source if touching system configs

---

## 🧰 Local Testing

To validate everything before PR:

```bash
brew install shellcheck
plutil -lint profiles/*.mobileconfig
shellcheck scripts/*.sh plugins/*/*.sh
```

---

## 🧭 Licensing & Credits

By contributing, you agree that your code is released under the **MIT License**
and may be modified for future macOS versions.

This project was started to help macOS users **retain autonomy** over when and how they upgrade.
