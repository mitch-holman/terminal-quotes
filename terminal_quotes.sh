## ─────────────────────────────────────────────────────────────
##  Terminal Quotes — drop this into your ~/.bashrc or ~/.zshrc
##  Sources: Philosophy, Theology (public domain authors only)
## ─────────────────────────────────────────────────────────────

_show_quote() {
  quotes=(
    ## Augustine (354–430)
    "\"Our heart is restless until it rests in You.\" — St. Augustine, Confessions"
    "\"Love God and do what you will.\" — St. Augustine"
    "\"He who sings prays twice.\" — St. Augustine"
    "\"If you understand it, it is not God.\" — St. Augustine"

    ## Thomas Aquinas (1225–1274)
    "\"The things that we love tell us what we are.\" — Thomas Aquinas"
    "\"The greatest kindness one can render to any man consists in leading him from error to truth.\" — Thomas Aquinas"
    "\"Wonder is the desire for knowledge.\" — Thomas Aquinas"

    ## Blaise Pascal (1623–1662)
    "\"The heart has reasons that reason does not know.\" — Blaise Pascal"
    "\"All of humanity's problems stem from man's inability to sit quietly in a room alone.\" — Blaise Pascal"
    "\"There is a God-shaped vacuum in the heart of every person.\" — Blaise Pascal"
    "\"In faith there is enough light for those who want to believe and enough shadows to blind those who don't.\" — Blaise Pascal"

    ## G.K. Chesterton (1874–1936)
    "\"The Christian ideal has not been tried and found wanting. It has been found difficult; and left untried.\" — G.K. Chesterton"
    "\"Fairy tales are more than true: not because they tell us that dragons exist, but because they tell us that dragons can be beaten.\" — G.K. Chesterton"
    "\"A man who will not defend the truth cannot really love it.\" — G.K. Chesterton"
    "\"To be clever enough to get all that money, one must be stupid enough to want it.\" — G.K. Chesterton"
    "\"The most extraordinary thing in the world is an ordinary man and an ordinary woman and their ordinary children.\" — G.K. Chesterton"

    ## Fyodor Dostoevsky (1821–1881)
    "\"Beauty will save the world.\" — Fyodor Dostoevsky, The Idiot"
    "\"The mystery of human existence lies not in just staying alive, but in finding something to live for.\" — Fyodor Dostoevsky"
    "\"Above all, don't lie to yourself.\" — Fyodor Dostoevsky"
    "\"Love in action is a harsh and dreadful thing compared with love in dreams.\" — Fyodor Dostoevsky"
    "\"It takes something more than intelligence to act intelligently.\" — Fyodor Dostoevsky"

    ## Plato & Socrates (428–348 BC)
    "\"The unexamined life is not worth living.\" — Socrates (via Plato)"
    "\"At the touch of love, everyone becomes a poet.\" — Plato"
    "\"Wise men speak because they have something to say; fools because they have to say something.\" — Plato"
    "\"Knowledge is the food of the soul.\" — Plato"

    ## Aristotle (384–322 BC)
    "\"We are what we repeatedly do. Excellence, then, is not an act, but a habit.\" — Aristotle"
    "\"Educating the mind without educating the heart is no education at all.\" — Aristotle"
    "\"The soul never thinks without a picture.\" — Aristotle"
    "\"It is the mark of an educated mind to be able to entertain a thought without accepting it.\" — Aristotle"
    "\"Happiness is the meaning and the purpose of life, the whole aim and end of human existence.\" — Aristotle"

    ## Marcus Aurelius (121–180 AD)
    "\"You have power over your mind — not outside events. Realize this, and you will find strength.\" — Marcus Aurelius"
    "\"Waste no more time arguing about what a good man should be. Be one.\" — Marcus Aurelius"
    "\"The impediment to action advances action. What stands in the way becomes the way.\" — Marcus Aurelius"
    "\"Accept the things to which fate binds you.\" — Marcus Aurelius"
    "\"Very little is needed to make a happy life; it is all within yourself, in your way of thinking.\" — Marcus Aurelius"

    ## Seneca (4 BC–65 AD)
    "\"He suffers more than necessary, who suffers before it is necessary.\" — Seneca"
    "\"Luck is what happens when preparation meets opportunity.\" — Seneca"
    "\"We suffer more in imagination than in reality.\" — Seneca"
    "\"Nusquam est qui ubique est.\" (To be everywhere is to be nowhere.) — Seneca"
  )

  local n=${#quotes[@]}
  local idx=$(( RANDOM % n ))
  local quote="${quotes[$idx]}"

  local width=$(tput cols 2>/dev/null || echo 80)
  [[ $width -gt 80 ]] && width=80

  printf '\n'
  printf '%*s\n' "$width" '' | tr ' ' '─'
  echo "$quote" | fold -s -w $(( width - 4 )) | while IFS= read -r line; do
    printf '  %s\n' "$line"
  done
  printf '%*s\n' "$width" '' | tr ' ' '─'
  printf '\n'
}

_show_quote
