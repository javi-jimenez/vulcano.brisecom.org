# vulcano.brisecom.org

**VULCANO — el trabajo hecho a mano.** Sello de oficio de BRISECOM.

> VULCANO = **el trabajo** (la forja). NEPTUNO = **el estado** (manda).
> En el mito, Vulcano forjó el tridente de Neptuno: el taller hace el arma,
> el dios la empuña.

## Estado

v1 — página estática, **dos idiomas por fichero** (no hay i18n de Hugo aquí):

| Fichero | Idioma | Notas |
|:---|:---|:---|
| `public/index.html` | EN | **Portada por defecto.** Widget de Google Translate para el resto de idiomas |
| `public/index-en.html` | EN | Copia de referencia del mismo contenido |
| `public/index-es.html` | ES | Versión española original |

⚠️ **Pendiente:** el selector de idioma EN/ES todavía **no está enlazado**
(`index.html` es siempre inglés y traduce con Google Translate). Para cambiar
de idioma de forma nativa hay que añadir los enlaces en la barra superior.

## Diseño

- **Paleta:** negro `#0a0605`, brasa `#e8420b`, oro `#d9a441`.
- **Tipografía:** Cinzel (títulos, romana de inspiración clásica), Inter
  (texto), JetBrains Mono (numerales).
- **Estructura:** portada a pantalla completa + 4 secciones con numerales
  romanos (I Neptuno manda / II Lo que sí y no es / III El argumento / IV Cuatro
  golpes) + cierre.
- **Marca:** símbolo yunque + llama en `brisecom-marca/_Brand_Kit/vulcano/svg/`.

## Deploy

```bash
make deploy     # FTP a /vulcano.brisecom.org
make push-all   # gitea + github
```

⚠️ **DNS pendiente**: `vulcano.brisecom.org` **no resuelve todavía**. Hay que
crear el registro en OVH apuntando a `87.98.230.241` (donde viven
`neptuno.` y `laia.`). Sin DNS la página se sube pero no se ve.

## Activos

Los logos y las imágenes viven en **`~/data/repo/brisecom-media/`** (no es git,
se sincroniza con rclone). Ver su `README.md`.
