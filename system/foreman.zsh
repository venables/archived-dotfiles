# If a Procfile.local file exists, use it. Otherwise run foreman normally
alias f='[ -e Procfile.local ] && foreman start -f Procfile.local || foreman start'
