# Ruby Introduction

This project is solution to the following requirements:

# Arrays, Hashes, and Enumerables

1. two_sum?(a, n) takes an array of integer a and an additional integer n as arguments and returns true if there are two different elements adding up to the integer n, and it returns false if not.
Example: 
two_sum?([], 3) returns false
two_sum?([3,4,5], 3) returns false
two_sum?([3,1,2,2,4], 3) returns true

2. max_sub_array(a) Given an integer array a, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.
A subarray is a contiguous part of an array.
Example: 
unique_array([1]) returns 1
unique_array([5,4,-1,7,8]) returns 23
unique_array([-2,1,-3,4,-1,2,1,-5,4]) returns 6

3. group_anagrams(a) Given an array of strings, group the anagrams together. You can return the answer in any order.
An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.
Example: 
group_anagrams([""]) returns [[""]]
group_anagrams(["eat","tea","tan","ate","nat","bat"]) returns
[["bat"],["nat","tan"],["ate","eat","tea"]]
group_anagrams(["a"]) returns [["a"]]

# Strings and Regular Expressions

4. brackets_match?(s) Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid. An input string is valid if:
All open brackets are closed by the same type of bracket.
All open brackets are closed in the correct order.
	Example:
	brackets_match?(“()”) returns true
	brackets_match?("()[]{}") returns true
	brackets_match?("(]") returns false
	brackets_match?("([)]") returns false
	brackets_match?("{[]}") returns true

5. remove_and_append_vowels(s) takes a string s representing a word as an argument and returns a string with all vowels of s removed and then appended to s. Characters are case-sensitive.
Example: 
remove_and_append_vowels(“Tree”) returns “Tree”
remove_and_append_vowels(“run”) returns “rnu”
remove_and_append_vowels(“Eyes”) returns “ysEe”

6. highest_frequency_word(s) takes a string s that represents a sentence as an argument and returns the word (in lowercase) with the highest frequency. If there is a tie, it returns the word that first appears earlier. Words are not case-sensitive.
Example: highest_frequency_word(“Bob hit a ball; the hit BALL flew far after it was hit.”) returns “hit”
highest_frequency_word(“A man was painting a new sign for the pub called the Pig and Whistle.”) returns “a”
highest_frequency_word(“How are you doing?”) returns “how”

# Object-Oriented Basics

You will be implementing a Book class. Each book has two attributes, title, and price. The attributes shouldn’t be publicly accessible; they should be read and modified through proper getters and setters.

The constructor should accept the title (string) as the first argument and price as the second argument and should raise ArgumentError (one of Ruby's built-in exception types) if the title is nil or an empty string, or if the price is nil or less than or equal to zero. 
Include a method formatted_price that returns the price of the Book formatted in the following manner: 
a price of 100 should be formatted as “100 dollars”
a price of 10.49 should be formatted as “10 dollars and 49 cents”
a price of 1.01 should be format as “1 dollar and 1 cent”
a price of 0.60 should be formatted as “60 cents”