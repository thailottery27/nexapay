# NEXA PAY ULTRA — Hidden Admin Route (/admin/)

## Structure
- `index.html`: User-facing app (`https://your-domain.vercel.app/`). No Admin button or Admin panel shown to regular users.
- `admin/index.html`: Separate hidden Admin Control Panel (`https://your-domain.vercel.app/admin/`), protected by PIN (`849201` by default, changeable inside settings).
- `supabase_setup.sql`: Run once in Supabase SQL Editor.

## Upload to GitHub & Deploy on Vercel
Upload both `index.html` and the `admin/` folder (with `admin/index.html` inside it) to your GitHub repository, then deploy on Vercel.
