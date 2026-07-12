# 1. Sitemap — What Actually Exists

> **TL;DR:** aireana.org.py tiene **7 páginas activas** y al menos **5 URLs que devuelven 404**. La arquitectura es plana, sin jerarquía. La página de La Serafina existe en dos URLs que redirigen a la misma landing.

## Páginas confirmadas (HTTP 200)

| URL | Sección probable | Notas |
|-----|------------------|-------|
| https://www.aireana.org.py/ | Home | Landing principal |
| https://www.aireana.org.py/la-serafina/ | Cultura > La Serafina | Página principal del espacio |
| https://www.aireana.org.py/cultura-de-la-no-discriminacion/la-serafina/ | Cultura > La Serafina (legacy URL) | Duplicado de arriba |
| https://www.aireana.org.py/contacto/ | Contacto | Formulario |
| https://www.aireana.org.py/ro-hendu/ | Cultura > Ro'hendu | Helpline |
| https://www.aireana.org.py/festival-de-cine/ | Cultura > Festival | Página propia |
| https://www.aireana.org.py/la-tatucada/ | Cultura > Tatucada | Batucada |

## URLs que devuelven 404 (probable legacy o borrador)

| URL esperada | Status | Hipótesis |
|--------------|--------|-----------|
| https://www.aireana.org.py/secciones/la-serafina/ | 404 | URL antigua antes del rediseño |
| https://www.aireana.org.py/sobre-aireana/ | 404 | Sección "sobre" sin construir |
| https://www.aireana.org.py/donaciones/ | 404 | Sin página de donaciones |
| https://www.aireana.org.py/aireatena/ | 404 | Sin página del podcast |
| https://www.aireana.org.py/cultura-de-la-no-discriminacion/ | 404 | Padre de /la-serafina |

## Páginas inferidas (no verificadas)

- ❓ /airesponsabilidad/ — sobre valores / equipo / quiénes somos
- ❓ /airesponsabilidad/equipo/ — staff
- ❓ /airesponsabilidad/historia/ — historia
- ❓ /airesponsabilidad/financiamiento/ — transparencia
- ❓ /agenda/ — calendario de eventos
- ❓ /blog/ — notas
- ❓ /prensa/ — kit de prensa

## Lo que existe en redes (no en su sitio)

| Plataforma | Handle | URL |
|------------|--------|-----|
| Facebook | La Serafina | https://www.facebook.com/LaSerafinaPy/ |
| Facebook | AIREANA | https://www.facebook.com/aireana.laserafina |
| Twitter/X | AIREANA | https://x.com/aireanapy |
| Instagram | La Serafina / AIREANA | @laserafinapy / @aireanapy (login walls) |

## Observaciones

1. **Duplicación de URL:** `/la-serafina/` y `/cultura-de-la-no-discriminacion/la-serafina/` apuntan al mismo contenido. Riesgo SEO + confusión.
2. **Sin blog / agenda:** No hay formato publicación de eventos sistemático en el sitio. La agenda vive solo en Facebook.
3. **Sin página de donaciones:** Gran hueco. Su modelo de financiamiento depende de donors internationales pero no hay forma explícita de donar en el sitio.
4. **Sin página de Ro'hendu formulario:** Solo descripción de la línea. Sin formulario de contacto cifrado.
5. **Sin landing por evento:** Festival de Cine, Tatucada, Ro'hendu tienen su página pero no hay landing por evento individual.

## Implicaciones para el rediseño

- Mantener URLs existentes como redirects (301) — preserva SEO + backlinks
- Crear estructura jerárquica: `/aireana/`, `/la-serafina/`, `/programas/`, `/agenda/`, `/donar/`, `/contacto/`
- Resolver la duplicación de `/la-serafina/` vs `/cultura-de-la-no-discriminacion/la-serafina/`
- Cada evento debe tener su landing URL pública compartible

## Sources

- [Aireana — home](https://www.aireana.org.py/)
- [La Serafina](https://www.aireana.org.py/la-serafina/)
- [Ro'hendu](https://www.aireana.org.py/ro-hendu/)
- [Festival de Cine](https://www.aireana.org.py/festival-de-cine/)
- [La Tatucada](https://www.aireana.org.py/la-tatucada/)
- [Contacto](https://www.aireana.org.py/contacto/)