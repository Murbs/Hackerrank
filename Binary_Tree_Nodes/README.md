# HackerRank-Binary_Tree_Nodes

You are given a table, BST, containing two columns: N and P, where N represents the value of a node in Binary Tree, and P is the parent of N.

Write a query to find the node type of Binary Tree ordered by the value of the node. Output one of the following for each node:

* Root: If node is root node.
* Leaf: If node is leaf node.
* Inner: If node is neither root nor leaf node.

---

To solve this I started by defining what the root is, which can be determined by the only value where 'P' is null as the root will not have a parent value. In reverse of that, you can figure out what values are 'Leaf' by searching for values that aren't in 'P' as these values will never be parents. Everything leftover can be considered 'Inner' as per the problem instructions.

```SQL
SELECT N, P =
    CASE
        WHEN P IS NULL THEN 'Root'
        WHEN N NOT IN (SELECT P FROM BST WHERE P IS NOT NULL) THEN 'Leaf'
        ELSE 'Inner'
    END
FROM BST
ORDER BY N ASC
```
