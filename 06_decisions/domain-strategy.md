# Domain Strategy

> 🟡 **Status: draft.** Requiere investigación de disponibilidad + consulta con AIREANA.

## Opciones evaluadas

### Opción A — Mantener `aireana.org.py`

- **Pros:** Continuidad, no romper backlinks existentes, RUC puede estar asociado
- **Contras:** `.com.py` es dominio país; atrae atención regulatoria local; requiere registrar `.com.py` (NIC.py)
- **Riesgo político:** Medio — `.com.py` es dominio país, susceptible a presión regulatoria

### Opción B — Registrar `aireana.org`

- **Pros:** `.org` = nonprofit internacional, mejor SEO global, dominio defensivo, mayor credibilidad
- **Contras:** Costo anual (~$15 USD), posible dominio en disputa, AIREANA debe operar el registrar
- **Riesgo político:** Bajo — `.org` no es país-específico, fuera de jurisdicción PY directa
- **Estado:** [VERIFY] — verificar disponibilidad

### Opción C — Registrar `laserafina.org`

- **Pros:** SEO para "La Serafina Asunción" claro
- **Contras:** No es la marca madre (esa es AIREANA)
- **Estado:** [VERIFY]

### Opción D — Multi-dominio

- `aireana.org` primario (internacional)
- `aireana.org.py` secundario (local, redirect)
- `laserafina.org` defensivo (redirect a `/la-serafina/`)
- `laserafina.com.py` defensivo

## Recomendación

**Opción D — Multi-dominio:**

1. `aireana.org` como dominio primario internacional
2. `aireana.org.py` con redirect 301 → `aireana.org` (preservar SEO local)
3. `laserafina.org` y `laserafina.com.py` defensivos (registrar y redirect)

**Costo anual estimado:** ~$50-80 USD total (4 dominios × $12-20)

**Registrar sugerido:** Namecheap o Cloudflare Registrar (no NIC.py directo, para evitar exposición local).

## Si AIREANA no puede operar el registrar

Alternativa: Ai-Whisperers opera el dominio en nombre de AIREANA, con acuerdo escrito de transferencia cuando AIREANA quiera tomarlo.

## Para discutir con AIREANA

- ❓ ¿Tienen ya dominios registrados? ¿Cuáles?
- ❓ ¿Operan ellos el registrar o un tercero?
- ❓ ¿Tienen acceso a la consola DNS de `aireana.org.py`?
- ❓ ¿Hay sensibilidad sobre el dominio `.com.py` por temas legales/regulatorios?

## Sources

- [Namecheap](https://www.namecheap.com/)
- [Cloudflare Registrar](https://www.cloudflare.com/products/registrar/)
- [NIC.py](https://www.nic.py/)