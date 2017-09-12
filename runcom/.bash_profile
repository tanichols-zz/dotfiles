# Add `~/bin` to the `$PATH`
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin";

# Load the shell dotfiles
for file in ~/.{env,alias,prompt,function}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;