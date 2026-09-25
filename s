warning: in the working copy of 'src/strings-tasks.js', LF will be replaced by CRLF the next time Git touches it
[1mdiff --git a/src/strings-tasks.js b/src/strings-tasks.js[m
[1mindex 713551b..0ff7ef6 100644[m
[1m--- a/src/strings-tasks.js[m
[1m+++ b/src/strings-tasks.js[m
[36m@@ -303,8 +303,8 @@[m [mfunction orderAlphabetically(str) {[m
  *   containsSubstring('JavaScript is Fun', 'Python') => false[m
  *   containsSubstring('12345', '34') => true[m
  */[m
[31m-function containsSubstring(/* str, substring */) {[m
[31m-  throw new Error('Not implemented');[m
[32m+[m[32mfunction containsSubstring(str, substring) {[m
[32m+[m[32m  return str.includes(substring);[m
 }[m
 [m
 /**[m
[36m@@ -321,8 +321,16 @@[m [mfunction containsSubstring(/* str, substring */) {[m
  *   countVowels('aEiOu') => 5[m
  *   countVowels('XYZ') => 1[m
  */[m
[31m-function countVowels(/* str */) {[m
[31m-  throw new Error('Not implemented');[m
[32m+[m[32mfunction countVowels(str) {[m
[32m+[m[32m  let asd = 0;[m
[32m+[m[32m  const vowels = 'aeiouy';[m
[32m+[m[32m  const char = str.toLowerCase().split('');[m
[32m+[m[32m  char.forEach((ca) => {[m
[32m+[m[32m    if (vowels.includes(ca)) {[m
[32m+[m[32m      asd += 1;[m
[32m+[m[32m    }[m
[32m+[m[32m  });[m
[32m+[m[32m  return asd;[m
 }[m
 [m
 /**[m
[36m@@ -338,8 +346,20 @@[m [mfunction countVowels(/* str */) {[m
  *   isPalindrome('apple') => false[m
  *   isPalindrome('No lemon, no melon') => true[m
  */[m
[31m-function isPalindrome(/* str */) {[m
[31m-  throw new Error('Not implemented');[m
[32m+[m[32mfunction isPalindrome(str) {[m
[32m+[m[32m  const char = str[m
[32m+[m[32m    .replaceAll(',', '')[m
[32m+[m[32m    .replaceAll('!', '')[m
[32m+[m[32m    .replaceAll(' ', '')[m
[32m+[m[32m    .replaceAll('?', '')[m
[32m+[m[32m    .replaceAll('.', '')[m
[32m+[m[32m    .toLowerCase();[m
[32m+[m
[32m+[m[32m  const newStr = char.split('').reverse().join('');[m
[32m+[m[32m  if (char !== newStr) {[m
[32m+[m[32m    return false;[m
[32m+[m[32m  }[m
[32m+[m[32m  return true;[m
 }[m
 [m
 /**[m
[36m@@ -354,8 +374,15 @@[m [mfunction isPalindrome(/* str */) {[m
  *   findLongestWord('A long and winding road') => 'winding'[m
  *   findLongestWord('No words here') => 'words'[m
  */[m
[31m-function findLongestWord(/* sentence */) {[m
[31m-  throw new Error('Not implemented');[m
[32m+[m[32mfunction findLongestWord(sentence) {[m
[32m+[m[32m  const arr = sentence.split(' ');[m
[32m+[m[32m  let char = '';[m
[32m+[m[32m  arr.forEach((word) => {[m
[32m+[m[32m    if (char.length < word.length) {[m
[32m+[m[32m      char = word;[m
[32m+[m[32m    }[m
[32m+[m[32m  });[m
[32m+[m[32m  return char;[m
 }[m
 [m
 /**[m
[36m@@ -368,8 +395,14 @@[m [mfunction findLongestWord(/* sentence */) {[m
  *   reverseWords('Hello World') => 'olleH dlroW'[m
  *   reverseWords('The Quick Brown Fox') => 'ehT kciuQ nworB xoF'[m
  */[m
[31m-function reverseWords(/* str */) {[m
[31m-  throw new Error('Not implemented');[m
[32m+[m[32mfunction reverseWords(str) {[m
[32m+[m[32m  let i = '';[m
[32m+[m[32m  const arr = str.split(' ');[m
[32m+[m[32m  arr.forEach((word) => {[m
[32m+[m[32m    const reverse = word.split('').reverse().join('');[m
[32m+[m[32m    i = `${i} ${reverse}`;[m
[32m+[m[32m  });[m
[32m+[m[32m  return i.trim();[m
 }[m
 [m
 /**[m
