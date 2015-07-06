. ~/.bashrc
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Start with 800000 40 byte slots for 32M which is about 2000 heaps
RUBY_GC_HEAP_FREE_SLOTS=32768
# 80 heaps at a time for about 1MB steps -- good compromise
RUBY_GC_HEAP_INIT_SLOTS=800000
# When to start GC, - app is at 5.6% vs 5.1 memory- start time at 20.5 - 10% mem growth.
RUBY_GC_MALLOC_LIMIT=30000000 

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
eval "$(hub alias -s)"
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi
