# LibreChat Configuration for Railway

## ⚠️ IMPORTANT: ONE CONFIG FILE ONLY ⚠️

### THE ACTIVE CONFIGURATION
**File:** `librechat-env-l.yaml`  
**Status:** ✅ **ACTIVE - USED BY RAILWAY**  
**GitHub URL:** https://raw.githubusercontent.com/corsellis/librechat-config-yaml/main/librechat-env-l.yaml

---

## DO NOT CREATE OTHER CONFIG FILES HERE

All other config variants have been archived to avoid confusion.
If you need to test something, create it in a different directory.

## How Railway Uses This File

1. Railway LibreChat service has environment variable:
   ```
   CONFIG_PATH=https://raw.githubusercontent.com/corsellis/librechat-config-yaml/main/librechat-env-l.yaml
   ```

2. When you push changes to GitHub, Railway automatically picks them up

## To Make Changes

```bash
# Edit the file
code librechat-env-l.yaml  # or nano/vim

# Deploy changes
git add librechat-env-l.yaml
git commit -m "Description of changes"
git push origin main
```

## MCP Servers Currently Configured

- ✅ gemini-search (Gemini RAG system)
- ✅ exa-search (Web search)
- ✅ github (GitHub integration)
- ✅ openmemory-hosted (Persistent memory)

## Archived Files

All other .yaml files have been moved to `/src/ARCHIVED_CONFIGS/`
This was done to prevent confusion about which config is active.

---

**Remember:** `librechat-env-l.yaml` is the ONLY config that matters for Railway!
