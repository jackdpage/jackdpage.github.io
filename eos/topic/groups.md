## Groups

Groups are simply a way of recalling several channels, in a specific 
order without needing to retype a channel list on every use. The simplest 
of groups is a consecutive run of fixtures. This is useful if you require 
frequent access to all fixtures of one type. 

Like all other targets in Eos, every group is referenced by a unique number 
which is specified on its creation. Also like all other targets, a group can 
be given a label.

Groups are order-sensitive, so upon recalling a group, the order of fixtures 
will be the same as when it was recorded. This is a significant factor to 
consider when programming effects with groups.

### Recording groups

Groups can be recorded directly in Live, or in Blind from the Groups tab.
For example, to record channels 1 through 24 into group 1 in Live, type 
__[1] [Thru] [24] [Record] [Group] [1]__. A label can be added either at the 
time of creation by appending __[Label]__ YourText, or by selecting the group 
after creation: __[Group] [1] [Label]__ YourText.

Alternatively, to record in Blind, open the Groups tab, either from the tab 
selection screen or by typing __[Group] [Group]__. Type __[Group] [1]__ to 
create an empty group. Then simply select the required channels in the 
desired order and press __[Enter]__ to save to the group.

### Subgroups

Groups can also contain subgroups, which act as single fixtures in the order 
when using __[Next]__ and __[Last]__, and when using effects. Subgroups are 
written in parentheses, for example `( 1 + 2 ) + ( 3 + 4 )` selects two 
subgroups of two fixtures each. You cannot have a subgroup within a subgroup.
To populate the command line with parentheses, type __[Shift]__ + __[/]__.

### Further reading

- [Offset](offset.html)
- [Groups (tab)](../tab/17.html)