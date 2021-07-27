set -o vi

randpass() {
  printf '%s\n' "$(head -n10 /dev/urandom | sha256sum  | head -c16)"
}
