# 99subw-web

Halaman landing satu halaman untuk https://www.99subw.com
(https://99subw.com otomatis diarahkan ke www).

## Struktur

```
99subw-web/
├── site/                 ← isi website
│   ├── index.html
│   ├── css/style.css     ← warna ada di bagian :root paling atas
│   └── images/logo.svg   ← logo (ganti file ini untuk ubah logo)
├── nginx/default.conf    ← konfigurasi nginx (port 8080)
├── Dockerfile
└── docker-compose.yml    ← label Traefik + redirect ke www
```

## Mengganti logo

Ganti `site/images/logo.svg` dengan logo kamu (nama file sama).
Kalau logo kamu PNG, simpan sebagai `site/images/logo.png` lalu di
`site/index.html` ubah `images/logo.svg` menjadi `images/logo.png`.

## Update website (setelah deploy pertama)

Laptop (WSL):
```bash
cd ~/projects/99subw-web
git add .
git commit -m "Update logo"
git push
```

VPS:
```bash
cd ~/apps/99subw-web
git pull
docker compose up -d --build
```
