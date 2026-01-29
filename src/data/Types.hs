module Data.Types where

import Data.Set (Set)
import Data.Set qualified as Set
import Data.Map (Map)
import Data.Map qualified as Map

data Node = Node String deriving (Eq, Ord, Show)

-- Undirected
newtype Arc = Arc (Node, Node) deriving (Show)
-- Directed
newtype Arrow = Arrow (Node, Node) deriving (Eq, Show)

instance Eq Arc where
    (==) :: Arc -> Arc -> Bool
    Arc (n1, n2) == Arc n3 n4 = Set.fromList [n1, n2] == Set.fromList [n3, n4]

type Graph = (Set Node, [Arc])
type AdjacencyList = Map Node [Arc]

adjacencyList :: Graph -> AdjacencyList
adjacencyList (nodes, arcs) = undefined
