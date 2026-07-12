# 6. Accessibility Audit

> **TL;DR:** Sin verificación real (WAVE / axe), imposible confirmar WCAG. Pero el contexto (WordPress probable, theme estándar) sugiere **accesibilidad básica probablemente presente**, no excelente. **P1:** auditoría con WAVE/axe antes de proponer rebuild.

## What we can infer

| Factor | Inferencia |
|--------|-----------|
| **WCAG level actual** | Desconocido — probablemente AA mínimo en theme estándar |
| **Color contrast** | [VERIFY] con WAVE |
| **Alt text en imágenes** | [VERIFY] — WP requiere pero no enforza |
| **Keyboard navigation** | [VERIFY] |
| **Screen reader support** | [VERIFY] |
| **ARIA labels** | [VERIFY] |
| **Focus indicators** | [VERIFY] |
| **Language attribute** | `<html lang="es">` probable |
| **Heading hierarchy** | [VERIFY] |
| **Form labels** | [VERIFY] |

## Specific OPSEC-relevant a11y considerations

### Crítico: ¿Es accesible para personas con discapacidad que también son LGBTIQ+?

Personas LGBTIQ+ con discapacidad son **doblemente marginadas**. El sitio debe ser:

1. **Totalmente navegable por teclado** — sin mouse
2. **Compatible con screen readers** — NVDA, JAWS, VoiceOver (todas en español)
3. **Subtítulos en videos** — para personas sordas
4. **Lenguaje claro** — para personas con discapacidad intelectual
5. **Sin CAPTCHA que excluya** — alternativas como honeypot o Turnstile accesible
6. **Sin "demostraciones de humanidad"** (CAPTCHA visual-only) — respetar a usuarios reales

## WCAG 2.2 AA checklist (lo que apuntamos)

| Criterio | Target | Notas |
|----------|--------|-------|
| 1.1.1 Non-text content | Alt text en todas las imágenes | |
| 1.3.1 Info and relationships | HTML semántico | |
| 1.4.3 Contrast (minimum) | 4.5:1 texto normal, 3:1 grande | Crítico para visibilidad |
| 1.4.4 Resize text | Hasta 200% sin pérdida | |
| 1.4.10 Reflow | 320px width sin scroll horizontal | Mobile-first |
| 1.4.11 Non-text contrast | 3:1 para UI | |
| 1.4.12 Text spacing | Sin clipping al ajustar | |
| 1.4.13 Content on hover/focus | Dismissible, hoverable, persistent | |
| 2.1.1 Keyboard | Todo accesible por teclado | |
| 2.4.3 Focus order | Lógico | |
| 2.4.7 Focus visible | Indicador claro | |
| 2.5.3 Label in name | Speech-input friendly | |
| 3.3.1 Error identification | Errores claros | Formularios |
| 3.3.2 Labels or instructions | Cada input con label | |
| 4.1.2 Name, role, value | ARIA correcto | |

## Tools para auditoría

| Herramienta | Uso | Costo |
|-------------|-----|-------|
| **WAVE** | Análisis visual de a11y | Gratis |
| **axe DevTools** | Browser extension, técnico | Gratis |
| **Lighthouse Accessibility** | Integrado en Chrome | Gratis |
| **Pa11y CI** | En CI/CD | Gratis |
| **Screen reader testing** | NVDA + JAWS + VoiceOver | Manual |
| **Keyboard-only navigation** | Tab + Enter + Space + arrows | Manual |

## Lo que NO verificamos en esta sesión

- ❌ Contraste de colores real
- ❌ Compatibilidad con screen readers específicos
- ❌ Navegación por teclado completa
- ❌ Reflow a 320px
- ❌ Formularios etiquetados correctamente

## Lo que sí podemos proponer de entrada

1. **Tipografía base 16px mínimo** (mejor 18px para audiencia adulta)
2. **Contraste alto** en todos los colores primarios
3. **Modo oscuro opcional** (también ayuda a personas con sensibilidad visual)
4. **Sin autoplay de video/audio**
5. **Subtítulos en español en todo video**
6. **Formularios simples** — sin campos innecesarios

## Sources

- [WCAG 2.2](https://www.w3.org/TR/WCAG22/)
- [WAVE](https://wave.webaim.org/)
- [axe DevTools](https://www.deque.com/axe/devtools/)