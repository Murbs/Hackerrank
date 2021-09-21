# HackerRank-Binary_Tree_Nodes

You are given a table, BST, containing two columns: N and P, where N represents the value of a node in Binary Tree, and P is the parent of N.

Write a query to find the node type of Binary Tree ordered by the value of the node. Output one of the following for each node:

* Root: If node is root node.
* Leaf: If node is leaf node.
* Inner: If node is neither root nor leaf node.

---

We can figure out the root node by searching for the value in column 'N' where 'P' is null, as the root node will not have a parent.
From there we can determine that any value not found in 'P' is a leaf because these values are not a parent to any other value.
To find these values we subquery 'P' to find out which values in this column do not exist in 'N'.
Remaining values that don't fit into these cases are inner nodes, as they are neither root or leaf.

```SQL
SELECT N, P =
    CASE
        WHEN P IS NULL THEN 'Root' # Null value in column 'P' is 'Root'
        WHEN N NOT IN (SELECT P FROM BST WHERE P IS NOT NULL) THEN 'Leaf' # Values found in 'N' that are not found in 'P' are 'Leaf'
        ELSE 'Inner' # Everything else is 'Inner'
    END
FROM BST
ORDER BY N ASC
```

