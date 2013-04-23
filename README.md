# MyGit

My Git is a silly, slightly over-engineered bash script that will install git
configurations without changing any particluar setting you have already made.

It does a completely raw passthru of command line arguments, meaning you can do
such things as:

    ./mygit --global

Currently this script will set you up with various aliases, configurations,
and drop a default `.gitignore` into your homedirectory, configured for use in
all repositories.

## Why Not a Dotfile?

Those can be perused, but they are the very definition of clobbering what you
already have in place (unless the system is new).

## My System Is New, Does This Do Everything?

No. Please run the following two commands as suits you.

    git config --global user.name "Your Name"
    git config --global user.mail "you@example.com"

## Future Work

I don't especially plan to do anything more with this. If I get really bored,
I would probably make it into a more robust system for tracking both git config
and snippets of help text so you remember why you have it, or why that obscure
alias is actually useful.
