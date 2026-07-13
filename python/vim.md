

# 1. Modes

Vim has different modes.

| Mode         | Purpose               | Enter    | Exit  |
| ------------ | --------------------- | -------- | ----- |
| Normal       | Navigation & commands | `Esc`    | -     |
| Insert       | Typing text           | `i`      | `Esc` |
| Visual       | Select text           | `v`      | `Esc` |
| Visual Line  | Select lines          | `V`      | `Esc` |
| Visual Block | Column selection      | `Ctrl+v` | `Esc` |
| Command      | Save, quit, search    | `:`      | Enter |

---

# 2. Moving Around

## Basic

```
h  left
j  down
k  up
l  right
```

---

## Faster movement

```
w   next word
b   previous word
e   end of word

0   beginning of line
^   first non-space
$   end of line

gg  top of file
G   bottom of file

5G  line 5

Ctrl+d   half page down
Ctrl+u   half page up

Ctrl+f   page down
Ctrl+b   page up
```

---

# 3. Enter Insert Mode

```
i   before cursor

I   beginning of line

a   after cursor

A   end of line

o   new line below

O   new line above
```

Leave insert mode:

```
Esc
```

---

# 4. Saving & Quitting

```
:w        save

:q        quit

:q!       quit without saving

:wq       save and quit

:x        save if changed

ZZ        save and quit
```

---

# 5. Delete

```
x      delete character

X      delete previous character

dd     delete line

5dd    delete 5 lines

dw     delete word

d$     delete to end of line

d0     delete to beginning

D      delete to end of line
```

---

# 6. Copy (Yank)

```
yy      copy line

5yy     copy 5 lines

yw      copy word

y$      copy to end

y0      copy to beginning
```

Paste

```
p   after cursor

P   before cursor
```

---

# 7. Undo / Redo

```
u        undo

Ctrl+r   redo
```

---

# 8. Change (Delete + Insert)

```
cw      change word

cc      change line

C       change to end

c$      same as C

ciw     change inside word

ci"     inside quotes

ci'     inside quotes

ci(     inside ()

ci[     inside []

ci{     inside {}
```

---

# 9. Replace

Replace one character

```
r
```

Example

```
hello

cursor on h

ra

becomes

aello
```

Replace mode

```
R
```

Exit

```
Esc
```

---

# 10. Search

```
/text

n     next

N     previous

?text    search upward
```

---

# 11. Find Character

```
fa    find next a

Fa    find previous a

ta    until a

Ta    until previous a

;     repeat

,     reverse repeat
```

---

# 12. Visual Mode

```
v       character selection

V       line selection

Ctrl+v  block selection
```

After selecting

```
d   delete

y   copy

c   change

>   indent

<   unindent
```

---

# 13. Indentation

```
>>    indent line

<<    unindent

=%     auto indent

gg=G   format entire file
```

---

# 14. Repeat

Repeat last command

```
.
```

Example

```
dw

.

.

.
```

Deletes another word every time.

One of Vim's most powerful commands.

---

# 15. Numbers

```
5dd

10j

3w

20x
```

Prefix almost any command with a number.

---

# 16. Text Objects (Very Important)

Suppose

```
printf("Hello World");
```

Cursor anywhere inside.

```
ci"

changes only

Hello World
```

```
di"

deletes inside quotes
```

Common ones

```
iw   inner word

aw   around word

i"

a"

i'

i(

i)

i{

i[

ip   paragraph
```

---

# 17. Copy Between Brackets

```
yi(

yi{

yi"

```

Delete

```
di(

di{

di"

```

---

# 18. Open Files

```
:e file.txt

:e another.py
```

---

# 19. Buffers

```
:ls

:b1

:bnext

:bprev

:bd
```

---

# 20. Tabs

```
:tabnew

:tabnext

:tabprev

:tabclose
```

---

# 21. Splits

Horizontal

```
:split
```

Vertical

```
:vsplit
```

Move

```
Ctrl+w h

Ctrl+w j

Ctrl+w k

Ctrl+w l
```

Close

```
Ctrl+w c
```

Equal size

```
Ctrl+w =
```

---

# 22. Search & Replace

Current line

```
:s/old/new/
```

Entire file

```
:%s/old/new/g
```

Ask confirmation

```
:%s/old/new/gc
```

---

# 23. Jump Back

```
Ctrl+o

jump back

Ctrl+i

jump forward
```

---

# 24. Marks

Set mark

```
ma
```

Jump

```
'a
```

Delete automatically when buffer closes.

---

# 25. Macros

Start recording

```
qa
```

Stop

```
q
```

Play

```
@a
```

Repeat

```
10@a
```

---

# 26. Folding (Optional)

```
za    toggle

zc    close

zo    open
```

---

# 27. Useful Motions

```
%     matching bracket

*     search current word

#     search backward

gd    go to local definition
```

---

# 28. Window Resize

```
Ctrl+w +

Ctrl+w -

Ctrl+w >

Ctrl+w <
```

---

# 29. Command History

```
:

then

↑
↓
```

---

# 30. Help

```
:help

:help dd

:help visual

:help :w
```

---

# Daily Workflow

For programming, you'll use these commands most often:

* Move: `hjkl`, `w`, `b`, `0`, `^`, `$`, `gg`, `G`
* Insert: `i`, `a`, `o`, `O`
* Delete: `x`, `dd`, `dw`, `D`
* Copy/Paste: `yy`, `p`, `P`
* Undo/Redo: `u`, `Ctrl+r`
* Change: `cw`, `cc`, `ciw`, `ci"`, `ci(`, `ci{`
* Search: `/`, `n`, `*`
* Save/Quit: `:w`, `:q`, `:wq`
* Visual mode: `v`, `V`, `Ctrl+v`
* Repeat: `.`
* Replace: `:%s/old/new/g`
* Splits: `:split`, `:vsplit`, `Ctrl+w` + `hjkl`

