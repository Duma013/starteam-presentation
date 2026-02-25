# StarTeam.pro — Presentation Website

Web de presentación de StarTeam.pro, plataforma empresarial integral para Starlite Group.

## Stack

- HTML + CSS + JS puro (sin build tools)
- Tailwind CSS (CDN)
- AOS — Animate on Scroll (CDN)
- Lucide Icons (CDN)
- Inter font (Google Fonts)

## Deploy

La web se despliega automáticamente en GitHub Pages con protección por contraseña (StatiCrypt AES-256).

**URL:** https://duma013.github.io/starteam-presentation/

### GitHub Actions

Cada push a `main` ejecuta el workflow que:
1. Encripta `index.html` con StatiCrypt
2. Despliega en GitHub Pages

El secreto `SITE_PASSWORD` debe estar configurado en Settings > Secrets.

### Test local

```bash
chmod +x encrypt.sh
./encrypt.sh
# Abre encrypted.html en el navegador
```

## Estructura

```
├── index.html              # Página principal (12 secciones)
├── assets/
│   ├── css/styles.css      # Design system dark + gold
│   ├── js/main.js          # Counters, navigation, filters
│   └── images/screenshots/ # Capturas reales (se añaden después)
├── .github/workflows/
│   └── deploy.yml          # Auto-encrypt + deploy
├── encrypt.sh              # Test local
└── README.md
```

## Desarrollado por Duma para Starlite Group
