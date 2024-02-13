- char => grain (morsel)

grain
- whitespace
- delimiter
- string
- int
- word
- other

whitespace-grain
- space
- tab
- newline
- unprintable
- comment

comment-grain
- ⦑ ... ⦒

word-grain
- ❲ ... ❳

delimiter-grain
- (
- )
- [
- ]
- <
- >
- '
- `
- " . " dot surrounded by whitespace is distinct from dots embedded in grain-other

string-grain
- “ ... ” where ... contains none of the above (no whitespace, no delimiters, no comments, no words

int-grain
- [0-9]+

element-grain
- <x+ attr+> ... </x+>
- <x+> ... </x+>
- <x+>
