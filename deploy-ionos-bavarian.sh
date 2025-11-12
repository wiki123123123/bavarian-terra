#!/bin/bash

# IONOS SFTP Credentials
HOST="access-5018828395.webspace-host.com"
PORT=22
USER="su206119"
PASS="sftpclaudenowlive"
REMOTE_DIR="/public/test"

echo "🚀 Deploying Bavarian Terra to IONOS SFTP (TEST environment)..."

# Files to deploy
FILES=(
    "index.html"
    "styles.css"
    "script.js"
)

# Create SFTP batch commands
cat > sftp_commands.txt << SFTPEOF
cd $REMOTE_DIR
$(for file in "${FILES[@]}"; do echo "put $file"; done)
bye
SFTPEOF

# Execute SFTP upload
sshpass -p "$PASS" sftp -P $PORT -o StrictHostKeyChecking=no -b sftp_commands.txt $USER@$HOST

# Clean up
rm sftp_commands.txt

echo ""
echo "✅ Deployment to TEST complete!"
echo "🌐 Test at: http://bavarian-terra.de/test (or your test URL)"
echo ""
echo "⚠️  IMPORTANT: After testing, deploy to production:"
echo "   Change REMOTE_DIR=\"/public\" and run again"
