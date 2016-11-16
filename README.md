# PosiPass - Random positive passphrases

## Synopsis

    # Generate ten default three-word passphrases.
    # In firstSECONDth1rd format.
    posipass

    # Generate fifty stronger five-word passphrases.
    posipass --words 5 --gen 50

## Description

PosiPass generates multi-word passphrases containing words which have positive
meanings or connotations.

The template is for three or more words to be concatenated together. The first
word is all lowercase, the second word is ALL UPPERCASE, and the third word
uses the standard 'replace vowels with numbers' leetspeek transform. Any
further words continue the pattern starting at step 1 again.

Wordlist from https://www.cs.uic.edu/~liub/FBS/sentiment-analysis.html

I use these passwords for signing up on various websites, and want to balance
the ease of remembering these passwords against their worst-case crackability.

Three-word passwords generally have lengths of 12 characters or more, and won't
fall to the simplest dictionary attacks.

This is security through obscurity, however, as if an attacker knows the
template and the wordlists, then they can easily craft a password cracker to
suit.

Don't use passphrases generated by the default settings for anything important,
as there just isn't enough entropy to be safe.

## See also

* https://github.com/j-norwood-young/happypass - A happy password generator
This uses the same password list.

## Caveats

This application hasn't been audited by anyone who knows anything about
password security.

## License

This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or
distribute this software, either in source code form or as a compiled
binary, for any purpose, commercial or non-commercial, and by any
means.

In jurisdictions that recognize copyright laws, the author or authors
of this software dedicate any and all copyright interest in the
software to the public domain. We make this dedication for the benefit
of the public at large and to the detriment of our heirs and
successors. We intend this dedication to be an overt act of
relinquishment in perpetuity of all present and future rights to this
software under copyright law.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

For more information, please refer to <http://unlicense.org>
