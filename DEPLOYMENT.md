# IONOS Deployment Instructions

## SFTP Credentials
- Server: access-5018828395.webspace-host.com
- Port: 22
- Protocol: SFTP
- Username: su206119
- Password: sftpclaudenowlive

## Deployment Process

### IMPORTANT: Always test first!

1. **Test Deployment** (to /public/test):
   ```bash
   sftp -P 22 su206119@access-5018828395.webspace-host.com
   cd /public/test
   put index.html
   put styles.css
   put script.js
   ```

2. **Verify** at test URL

3. **Production Deployment** (to /public):
   ```bash
   sftp -P 22 su206119@access-5018828395.webspace-host.com
   cd /public
   put index.html
   put styles.css
   put script.js
   ```

## Directory Structure
```
/public/          ← Production
/public/test/     ← Testing environment
```

## Notes
- Base directory is /public
- Always deploy to /public/test first
- Only move to /public after verification
