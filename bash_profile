export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
eval "$(hub alias -s)"
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi
