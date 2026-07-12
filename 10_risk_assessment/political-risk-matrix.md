# Political Risk Matrix

> Amenazas concretas y su probabilidad + impacto + mitigación.

## Risk matrix

| # | Amenaza | Probabilidad | Impacto | Mitigación |
|---|---------|--------------|---------|------------|
| R1 | **DDoS durante evento sensible** | Media | Bajo | Cloudflare DDoS protection (gratis) |
| R2 | **Acoso en redes sociales** | Alta | Bajo-Medio | Derivar a AIREANA, no responder desde Ai-Whisperers |
| R3 | **Campaña de desprestigio** | Media | Medio | Hechos verificables, tono profesional, aliados que respondan |
| R4 | **Sitio hackeado** | Baja | Alto | OPSEC checklist + dependency audit + backups |
| R5 | **Domain takeover** | Baja | Alto | Registrar con 2FA + monitoreo + dominios defensivos |
| R6 | **Donante internacional retirado** | Media | Alto | Diversificar funders, Open Collective |
| R7 | **Presión a artistas aliados** | Media | Medio | Solidaridad pública, derivación a AIREANA |
| R8 | **Negativa de proveedores locales** | Baja | Bajo | Proveedores extranjeros + Cloudflare |
| R9 | **Acoso policial selectivo en eventos** | Media | Bajo | Documentar, no interferir, derivar a Ro'hendu |
| R10 | **Presión regulatoria sobre .com.py** | Baja-Media | Medio | Migrar a .org internacional |
| R11 | **Filtración de datos de usuarios** | Baja | Alto | No recolectar datos innecesarios, HTTPS, CSP |
| R12 | **Suplantación (phishing)** | Media | Medio | Registrar dominios defensivos |
| R13 | **Cambio de gobierno** | Alta (cada 5 años) | Variable | Estrategia adaptable |
| R14 | **Desastre natural** | Baja | Variable | Backups en múltiples regiones |
| R15 | **Discurso de odio en comments** | Alta | Bajo | Deshabilitar comments en sitio, empujar a redes moderadas |

## Threats amplified by current admin (Peña 2023-2028)

| Threat | Por qué amplificado |
|--------|---------------------|
| R2 (acoso en redes) | Retórica oficial normaliza discurso anti-LGBTIQ+ |
| R3 (campaña desprestigio) | Voceros oficialistas pueden amplificar |
| R7 (presión a artistas) | Ambiente hostil autocensura a aliados |
| R10 (presión regulatoria) | Mayor voluntad política de actuar contra ONGs |
| R13 (cambio de gobierno) | Cambio potencial en 2028, incierto |

## Threats reduced by current admin

| Threat | Por qué reducido |
|--------|------------------|
| (Ninguno significativo) | — |

## Threat model por stakeholder

### AIREANA / La Serafina

- **Riesgo principal:** Acoso + desprestigio
- **Mitigación:** Perfil bajo, aliados sólidos, hechos verificables
- **Trigger de alerta:** Si el sitio recibe >10x tráfico normal en 24h sin explicación → posible DDoS / ataque

### Donantes internacionales (Mama Cash, Astraea, etc.)

- **Riesgo principal:** Donor withdrawal bajo presión política
- **Mitigación:** Diversificar funders + transparencia + comunicación proactiva

### Usuarios de Ro'hendu

- **Riesgo principal:** Filtración de identidad
- **Mitigación:** Solo derivación, no almacenamiento. Cifrado end-to-end si es chat. Datos en jurisdicción segura.

### Equipo AIREANA

- **Riesgo principal:** Acoso individual
- **Mitigación:** No exponer datos personales más allá de lo público. Comunicación por canales seguros.

### Ai-Whisperers

- **Riesgo principal:** Reputación por asociación
- **Mitigación:** Branding "built by community", no logos visibles, contratos claros con cláusula de salida si el riesgo escala

## Lo que NO está en este análisis

- ❌ Riesgos financieros del cliente (no los conocemos)
- ❌ Riesgos legales de su personería jurídica (no los conocemos)
- ❌ Riesgos de salud de integrantes específicos
- ❌ Riesgos de seguridad física del local (verificar que tienen seguro / protocolo)

## Sources

- `Ai-Whisperers/somosgay-context/10_risk_assessment/political-risk-matrix.md`
- [Amnesty International — LGBTI rights Paraguay](https://www.amnesty.org/en/location/americas/south-america/paraguay/)