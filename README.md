# terminal-quotes

A tiny shell script that displays a random quote from history's great philosophers and theologians every time you open a terminal.

Quotes are drawn from public domain authors: Augustine, Aquinas, Pascal, Chesterton, Dostoevsky, Plato, Aristotle, Marcus Aurelius, and Seneca.

```
────────────────────────────────────────────────────────────────────────────────
  "The heart has reasons that reason does not know." — Blaise Pascal
────────────────────────────────────────────────────────────────────────────────
```

## Installation

### Option 1 — One-liner (recommended)

Clone the repo and append the script to your shell config:

```bash
# For zsh (macOS default):
cat terminal_quotes.sh >> ~/.zshrc && source ~/.zshrc

# For bash:
cat terminal_quotes.sh >> ~/.bashrc && source ~/.bashrc
```

### Option 2 — Manual

1. Open your shell config file:

```bash
nano ~/.zshrc   # or ~/.bashrc
```

2. Paste the contents of `terminal_quotes.sh` at the bottom of the file.

3. Save and reload:

```bash
source ~/.zshrc
```

Not sure which shell you're using? Run `echo $SHELL` to find out.

## Uninstall

Open your shell config (`~/.zshrc` or `~/.bashrc`) and delete everything between the two comment lines:

```
## ─────────────────────────────────────────────────────────────
##  Terminal Quotes ...
...
_show_quote
```

Then run `source ~/.zshrc` to apply the change.

## Adding your own quotes

The quotes live in the `_show_quote()` function inside `terminal_quotes.sh`. Add new entries following the same format:

```bash
"\"Your quote here.\" — Author Name"
```

## Authors included

| Author | Dates |
|---|---|
| St. Augustine | 354–430 AD |
| Thomas Aquinas | 1225–1274 |
| Blaise Pascal | 1623–1662 |
| G.K. Chesterton | 1874–1936 |
| Fyodor Dostoevsky | 1821–1881 |
| Plato / Socrates | 428–348 BC |
| Aristotle | 384–322 BC |
| Marcus Aurelius | 121–180 AD |
| Seneca | 4 BC–65 AD |

All authors are in the public domain.

## License

MIT
