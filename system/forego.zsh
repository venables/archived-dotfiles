# If a Procfile.local file exists, use it. Otherwise run forego normally
alias f='[ -e Procfile.local ] && forego start -f Procfile.local || forego start'
