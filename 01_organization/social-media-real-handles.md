# Redes Sociales AIREANA — Handles Reales Verificados

> **TL;DR:** Las cuentas oficiales de AIREANA / La Serafina verificadas **directamente del footer del sitio oficial** (`aireana.org.py/la-serafina/`). Confirmadas con `curl` HTTP probing el 2026-07-11.

## Handles oficiales (extraídos del footer)

| Plataforma | Handle / URL | Verificada | Notas |
|------------|--------------|------------|-------|
| **Facebook (AIREANA principal)** | https://www.facebook.com/aireana.laserafina | ✅ 200 | "aireana.laserafina" — perfil combinado |
| **Facebook (La Serafina)** | https://www.facebook.com/LaSerafinaPy | ✅ 200 | Página del espacio cultural, 5.5K followers (de sesión 1) |
| **X (Twitter)** | https://x.com/aireanapy | ✅ 200 | @aireanapy |
| **Instagram (AIREANA)** | https://www.instagram.com/aireanalaserafina | ✅ 200 | "aireanalaserafina" |
| **Instagram (La Serafina)** | https://www.instagram.com/laserapy | ✅ 200 | **"laserapy"** (sin eñe, abreviado) |
| **TikTok** | https://www.tiktok.com/@aireanapy | ✅ 200 | @aireanapy |
| **TikTok (La Serafina)** | https://www.tiktok.com/@laserapy | ✅ 200 | **@laserapy** |
| **YouTube** | https://www.youtube.com/channel/UCpaG8scWVJ6D8qWkq0NvC0Q | ✅ 200 | Channel ID canónico |
| **Linktree** | https://linktr.ee/laserafinapy | ✅ 200 | Confirmado vía sesión 1 |

## Corrección importante

En sesión 1 había asumido Instagram = **@laserafinapy** (con eñe). El handle real según el footer es:

- **@aireanalaserafina** (para AIREANA)
- **@laserapy** (para La Serafina — sin eñe)

Esto es un punto importante de corrección si se hace cualquier tarjeta de contacto o QR para Luana.

## Lo que falta verificar (gaps de los subagentes que fallaron)

| Plataforma | Estado | Notas |
|------------|--------|-------|
| **LinkedIn** | ❓ No detectado | Probable que AIREANA no use (es red menos común para ONGs LGBTIQ+ en LAC) |
| **YouTube contenido específico** | ❓ No indagado | Channel existe (`UCpaG8scWVJ6D8qWkq0NvC0Q`) — falta confirmar si suben videos propios o solo reutilizan |
| **TikTok frecuencia de publicación** | ❓ No indagado | Cuenta existe — sin volumen confirmado |
| **Spotify for Podcasters** | ✅ Existe | (Sesión 1) show ID 2pzuEH7Q6kmEs5vU5N3qMC |
| **Anchor** | ✅ Existe | (Sesión 1) https://anchor.fm/aireana |
| **Apple Podcasts** | ✅ Existe | (Sesión 1) https://podcasts.apple.com/us/podcast/aireatena-un-podcast-de-aireana/id1504425752 |
| **Mastodon / Threads** | ❓ No detectado | Probable que no usen |

## Lo que esto significa para el sitio (si se construye)

1. **Footer / contact** debe tener todos los enlaces exactos arriba.
2. **Botones "seguir"** deben apuntar a estos URLs canónicos.
3. **Meta description** debe incluir `LaserafinaPy` y `Aireanalaserafina` como handles oficiales.
4. **Open Graph tags** deben linkear a la página principal de Facebook (Compartir).
5. **JSON-LD Organization schema**: incluir sameAs[] con Facebook, Instagram, TikTok, X, YouTube.

## Patrón de handles

- **AIREANA** = **@aireanapy** + variantes institucionales (**@aireanalaserafina** en IG, **aireana.laserafina** en FB)
- **La Serafina** = **@laserapy** (sin eñe) + **LaSerafinaPy** (camelCase con eñe)
- Naming es coherente con Paraguay donde AIREANA es la marca paraguas y La Serafina es la sede.

## Sources

- [Footer de aireana.org.py/la-serafina/](https://www.aireana.org.py/la-serafina/)
- HTTP probing directo `curl -A "Mozilla/5.0"` ejecutado 2026-07-11
