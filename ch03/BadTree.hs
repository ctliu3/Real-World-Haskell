-- file: ch03/BadTree.hs
bad_nodesAreSame (Node a _ _) (Node a _ _) = Just a
bad_nodesAreSame _            _            = Nothing

-- file: ch03/BadTree.hs
nodesAreSame (Node a _ _) (Node b _ _)
    | a == b     = Just
nodesAreSame _ _ = Nothing
