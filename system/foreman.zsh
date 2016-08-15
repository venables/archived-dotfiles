# If a Procfile.local file exists, use it. Otherwise run foreman normally
alias f='[ -e Procfile.local ] && nf start --procfile Procfile.local || nf start'
