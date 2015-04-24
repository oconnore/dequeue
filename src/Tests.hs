module Main where

import Data.Dequeue
import Text.Printf
import Test.QuickCheck

tests :: [(String, IO ())]
tests = [
    ("pushpop_front_bq", quickCheck prop_pushpop_front_bq),
    ("pushpop_back_bq", quickCheck prop_pushpop_back_bq),
    ("push_front_bq", quickCheck prop_push_front_bq),
    ("push_back_bq", quickCheck prop_push_back_bq),
    ("takeFront_bq", quickCheck prop_takeFront_bq),
    ("takeBack_bq", quickCheck prop_takeBack_bq),
    ("length_toList_bq", quickCheck prop_length_toList_bq),
    ("fromList_toList_bq", quickCheck prop_fromList_toList_bq),
    ("push_back_bq_balance", quickCheck prop_push_back_bq_balance),
    ("push_front_bq_balance", quickCheck prop_push_front_bq_balance),
    ("pop_front_bq_balance", quickCheck prop_pop_front_bq_balance),
    ("pop_back_bq_balance", quickCheck prop_pop_back_bq_balance),
    ("read_show_bq", quickCheck prop_read_show_bq)]

main :: IO ()
main = mapM_ (\(s,a) -> printf "%-25s: " s >> a) tests

