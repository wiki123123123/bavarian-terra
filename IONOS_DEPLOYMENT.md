# Bavarian Terra - IONOS Deployment

## 🔧 SFTP Credentials

- **Server:** access-5018828395.webspace-host.com
- **Port:** 22
- **Protocol:** SFTP
- **Username:** su206219
- **Password:** sftpclaudenowlive
- **Base Directory:** /public

## 📂 Directory Structure

```
/public/          ← Production (LIVE)
/public/test/     ← Testing (SAFE)
```

## ⚠️ CRITICAL WORKFLOW

**ALWAYS test first!**

### 1. Deploy to TEST

```bash
./deploy-ionos-bavarian.sh
```

This deploys to `/public/test`

### 2. Verify Test Site

Check the test URL and make sure everything works

### 3. Deploy to PRODUCTION

Edit `deploy-ionos-bavarian.sh`:
- Change: `REMOTE_DIR="/public/test"`
- To: `REMOTE_DIR="/public"`

Then run:
```bash
./deploy-ionos-bavarian.sh
```

## 🚀 Quick Commands

### Test Deployment
```bash
# Deploy to /public/test
REMOTE_DIR="/public/test" ./deploy-ionos-bavarian.sh
```

### Production Deployment
```bash
# Deploy to /public
REMOTE_DIR="/public" ./deploy-ionos-bavarian.sh
```

## 📝 Manual SFTP (if script fails)

```bash
sftp -P 22 su206219@access-5018828395.webspace-host.com
cd /public/test
put index.html
put styles.css
put script.js
bye
```

## ✅ After Deployment

1. Clear browser cache
2. Test all pages
3. Check mobile responsiveness
4. Verify all links work

