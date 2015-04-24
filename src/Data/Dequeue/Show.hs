{- |
Module      :  Data.Dequeue.Show
Description :  A newtype used entirely to provide 'Read' and 'Show' instances for 'Dequeue's.
Copyright   :  (c) Henry Bucklow 2010
License     :  BSD3

Maintainer  :  henry@elsie.org.uk
Stability   :  provisional
Portability :  portable

A newtype used entirely for its derived 'Read' and 'Show' instances. These are
then used by 'showDequeue' and 'readDequeue' to make writing 'Read' and 'Show'
instances for 'Dequeue's easier.
-}
module Data.Dequeue.Show (Dequeue(..)) where

newtype Dequeue a = Dequeue [a] deriving (Read, Show)

