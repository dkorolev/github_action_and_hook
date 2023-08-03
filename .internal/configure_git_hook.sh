#!/bin/bash
cat <<EOF >.git/hooks/pre-commit
#!/bin/bash
.internal/wc_update.sh
EOF
chmod +x .git/hooks/pre-commit
