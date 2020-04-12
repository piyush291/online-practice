CREATE TABLE l_l (
    SrNO INT,
    question VARCHAR(500),
    answer VARCHAR(10),
    attribute VARCHAR(15)
);
insert into l_l values (1 , 'What does the following function do for a given Linked List with first node as head?
void fun1(struct node* head)
{
  if(head == NULL)
    return;
  
  fun1(head->next);
  printf("%d  ", head->data);
}
A: Prints all nodes of linked lists
B: Prints all nodes of linked list in reverse order
C: Prints alternate nodes of Linked List
D: Prints alternate nodes in reverse order' , 'c' , 'easy');
select * from l_l;
insert into l_l values (2 , 'Which of the following points is/are true about Linked List data structure when it is compared with array
A
Arrays have better cache locality that can make them better in terms of performance.
B
It is easy to insert and delete elements in Linked List
C
Random access is not allowed in a typical implementation of Linked Lists
D
The size of array has to be pre-decided, linked lists can change their size any time.
E
All of the above
' , 'e' , 'easy');
select * from l_l;
insert into l_l values (3 , 'Consider the following function that takes reference to head of a Doubly Linked List as parameter. Assume that a node of doubly linked list has previous pointer as prev and next pointer as next.
void fun(struct node **head_ref)
{
    struct node *temp = NULL;
    struct node *current = *head_ref;
 
    while (current !=  NULL)
    {
        temp = current->prev;
        current->prev = current->next;
        current->next = temp;
        current = current->prev;
    }
 
    if(temp != NULL )
        *head_ref = temp->prev;
}
Assume that reference of head of following doubly linked list is passed to above function 1 <--> 2 <--> 3 <--> 4 <--> 5 <-->6. What should be the modified linked list after the function call?
A
2 <-> 1 <-> 4 <--> 3 <--> 6 <-->5
B
5 <--> 4 <--> 3 <--> 2 <--> 1 <-->6.
C
6 <--> 5 <--> 4 <--> 3 <--> 2 <--> 1.
D
6 <--> 5 <--> 4 <--> 3 <--> 1 <--> 2' , 'c' , 'easy' );
alter table l_l modify question varchar(1000);
insert into l_l values(4, 'Which of the following sorting algorithms can be used to sort a random linked list with minimum time complexity?
A
Insertion Sort
B
Quick Sort
C
Heap Sort
D
Merge Sort
', 'd','medium');
insert into l_l values (5 , 'The following function reverse() is supposed to reverse a singly linked list. There is one line missing at the end of the function.
/* Link list node */
struct node
{
    int data;
    struct node* next;
};
 
/* head_ref is a double pointer which points to head (or start) pointer 
  of linked list */
static void reverse(struct node** head_ref)
{
    struct node* prev   = NULL;
    struct node* current = *head_ref;
    struct node* next;
    while (current != NULL)
    {
        next  = current->next;  
        current->next = prev;   
        prev = current;
        current = next;
    }
    /*ADD A STATEMENT HERE*/
}
What should be added in place of "/*ADD A STATEMENT HERE*/", so that the function correctly reverses a linked list.
A
*head_ref = prev;
B
*head_ref = current;
C
*head_ref = next;
D
*head_ref = NULL;
', 'a', 'medium');
insert into l_l values (6, 'What is the output of following function for start pointing to first node of following linked list? 1->2->3->4->5->6
void fun(struct node* start)
{
  if(start == NULL)
    return;
  printf("%d  ", start->data); 
  
  if(start->next != NULL )
    fun(start->next->next);
  printf("%d  ", start->data);
}
Run on IDE
A
1 4 6 6 4 1
B
1 3 5 1 3 5
C
1 2 3 5
D
1 3 5 5 3 1
','d','medium');
desc stack;
insert into stack values (1 , 'Following is C like pseudo code of a function that takes a number as an argument, and uses a stack S to do processing.
void fun(int n)
{
    Stack S;  // Say it creates an empty stack S
    while (n > 0)
    {
      // This line pushes the value of n%2 to stack S
      push(&S, n%2);
 
      n = n/2;
    }
 
    // Run while Stack S is not empty
    while (!isEmpty(&S))
      printf("%d ", pop(&S)); // pop an element from S and print it
}
What does the above function do in general?
A
Prints binary representation of n in reverse order
B
Prints binary representation of n
C
Prints the value of Logn
D
Prints the value of Logn in reverse order
' , 'b' , 'easy');
insert into stack values (2 , 'Which one of the following is an application of Stack Data Structure?
A
Managing function calls
B
The stock span problem
C
Arithmetic expression evaluation
D
All of the above
' , 'd' , 'medium');
insert into stack values (3 , 'Which of the following is true about linked list implementation of stack?
A
In push operation, if new nodes are inserted at the beginning of linked list, then in pop operation, nodes must be removed from end.
B
In push operation, if new nodes are inserted at the end, then in pop operation, nodes must be removed from the beginning.
C
Both of the above
D
None of the above
' , 'd' , 'difficult');
insert into stack values (4 , 'Consider the following pseudocode that uses a stack
declare a stack of characters
while ( there are more characters in the word to read )
{
   read a character
   push the character on the stack
}
while ( the stack is not empty )
{
   pop a character off the stack
   write the character to the screen
}
Run on IDE
What is output for input "geeksquiz"?
A
geeksquizgeeksquiz
B
ziuqskeeg
C
geeksquiz
D
ziuqskeegziuqskeeg
' , 'b' , 'easy');
insert into stack values (5 , 'Following is an incorrect pseudocode for the algorithm which is supposed to determine whether a sequence of parentheses is balanced:
declare a character stack 
while ( more input is available)
{
   read a character
   if ( the character is a "(" ) 
      push it on the stack
   else if ( the character is a ")" and the stack is not empty )
      pop a character off the stack
   else
      print "unbalanced" and exit
 }
 print "balanced"
Which of these unbalanced sequences does the above code think is balanced? Source: http://www.cs.colorado.edu/~main/questions/chap07q.html
A
((())
B
())(()
C
(()()))
D
(()))()
' , 'a' , 'medium');
insert into stack values (6 , 'The following postfix expression with single digit operands is evaluated using a stack:
              8 2 3 ^ / 2 3 * + 5 1 * - 
Note that ^ is the exponentiation operator. The top two elements of the stack after the first * is evaluated are:
A
6, 1
B
5, 7
C
3, 2
D
1, 5
' , 'a' , 'difficult');
select *from stack;
insert into queue values (1 ,'Following is C like pseudo code of a function that takes a Queue as an argument, and uses a stack S to do processing.
void fun(Queue *Q)
{
    Stack S;  // Say it creates an empty stack S
 
    // Run while Q is not empty
    while (!isEmpty(Q))
    {
        // deQueue an item from Q and push the dequeued item to S
        push(&S, deQueue(Q));
    }
 
    // Run while Stack S is not empty
    while (!isEmpty(&S))
    {
      // Pop an item from S and enqueue the poppped item to Q
      enQueue(Q, pop(&S));
    }
}
Run on IDE
What does the above function do in general?
A
Removes the last from Q
B
Keeps the Q same as it was before the call
C
Makes Q empty
D
Reverses the Q
' , 'd' , 'easy' );
insert into queue values (2 ,'Which one of the following is an application of Queue Data Structure?
A
When a resource is shared among multiple consumers.
B
When data is transferred asynchronously (data not necessarily received at same rate as sent) between two processes
C
Load Balancing
D
All of the above
' , 'd' , 'medium' );
insert into queue values (3 ,'How many stacks are needed to implement a queue. Consider the situation where no other data structure like arrays, linked list is available to you.
A
1
B
2
C
3
D
4
' , 'b' , 'difficult' );
insert into queue values (4 ,'How many queues are needed to implement a stack. Consider the situation where no other data structure like arrays, linked list is available to you.
A
1
B
2
C
3
D
4
' , 'b' , 'easy' );
insert into queue values (5 ,'A priority queue can efficiently implemented using which of the following data structures? Assume that the number of insert and peek (operation to see the current highest priority item) and extraction (remove the highest priority item) operations are almost same.
A
Array
B
Linked List
C
Heap Data Structures like Binary Heap, Fibonacci Heap
D
None of the above
' , 'c' , 'medium' );
insert into queue values (6 ,'Which of the following is true about linked list implementation of queue?
A
In push operation, if new nodes are inserted at the beginning of linked list, then in pop operation, nodes must be removed from end.
B
In push operation, if new nodes are inserted at the end, then in pop operation, nodes must be removed from the beginning.
C
Both of the above
D
None of the above
' , 'c' , 'difficult' );
select *from queue;
insert into pointers values (1 , 'What is the output of following program?
# include <stdio.h>
void fun(int x)
{
    x = 30;
}
 
int main()
{
  int y = 20;
  fun(y);
  printf("%d", y);
  return 0;
}
A
30
B
20
C
Compiler Error
D
Runtime Error
' , 'b' , 'easy');
insert into pointers values (2 , 'Output of following program?
# include <stdio.h>
void fun(int *ptr)
{
    *ptr = 30;
}
 
int main()
{
  int y = 20;
  fun(&y);
  printf("%d", y);
 
  return 0;
}
Run on IDE
A
20
B
30
C
Compiler Error
D
Runtime Error
' , 'b' , 'medium');
insert into pointers values (3 , 'Output of following program?
#include <stdio.h>
 
int main()
{
    int *ptr;
    int x;
 
    ptr = &x;
    *ptr = 0;
 
    printf(" x = %dn", x);
    printf(" *ptr = %dn", *ptr);
 
    *ptr += 5;
    printf(" x  = %dn", x);
    printf(" *ptr = %dn", *ptr);
 
    (*ptr)++;
    printf(" x = %dn", x);
    printf(" *ptr = %dn", *ptr);
 
    return 0;
}
Run on IDE
A
x = 0
*ptr = 0
x = 5
*ptr = 5
x = 6
*ptr = 6
B
x = garbage value
*ptr = 0
x = garbage value
*ptr = 5
x = garbage value
*ptr = 6
C
x = 0
*ptr = 0
x = 5
*ptr = 5
x = garbage value
*ptr = garbage value
D
x = 0
*ptr = 0
x = 0
*ptr = 0
x = 0
*ptr = 0
' , 'a' , 'difficult');
insert into pointers values (4 , 'Consider a compiler where int takes 4 bytes, char takes 1 byte and pointer takes 4 bytes.
#include <stdio.h>
 
int main()
{
    int arri[] = {1, 2 ,3};
    int *ptri = arri;
 
    char arrc[] = {1, 2 ,3};
    char *ptrc = arrc;
 
    printf("sizeof arri[] = %d ", sizeof(arri));
    printf("sizeof ptri = %d ", sizeof(ptri));
 
    printf("sizeof arrc[] = %d ", sizeof(arrc));
    printf("sizeof ptrc = %d ", sizeof(ptrc));
 
    return 0;
}
Run on IDE
A
sizeof arri[] = 3 sizeof ptri = 4 sizeof arrc[] = 3 sizeof ptrc = 4
B
sizeof arri[] = 12 sizeof ptri = 4 sizeof arrc[] = 3 sizeof ptrc = 1
C
sizeof arri[] = 3 sizeof ptri = 4 sizeof arrc[] = 3 sizeof ptrc = 1
D
sizeof arri[] = 12 sizeof ptri = 4 sizeof arrc[] = 3 sizeof ptrc = 4
' , 'd' , 'easy');
insert into pointers values (5 , 'Assume that float takes 4 bytes, predict the output of following program.
#include <stdio.h>
 
int main()
{
    float arr[5] = {12.5, 10.0, 13.5, 90.5, 0.5};
    float *ptr1 = &arr[0];
    float *ptr2 = ptr1 + 3;
 
    printf("%f ", *ptr2);
    printf("%d", ptr2 - ptr1);
 
   return 0;
}
Run on IDE
A
90.500000 3
B
90.500000 12
C
10.000000 12
D
0.500000 3
' , 'a' , 'medium');
insert into pointers values (6 , '#include<stdio.h>
int main()
{
    int arr[] = {10, 20, 30, 40, 50, 60};
    int *ptr1 = arr;
    int *ptr2 = arr + 5;
    printf("Number of elements between two pointer are: %d.", 
                                (ptr2 - ptr1));
    printf("Number of bytes between two pointers are: %d",  
                              (char*)ptr2 - (char*) ptr1);
    return 0;
}
Run on IDE
Assume that an int variable takes 4 bytes and a char variable takes 1 byte
A
Number of elements between two pointer are: 5. Number of bytes between two pointers are: 20
B
Number of elements between two pointer are: 20. Number of bytes between two pointers are: 20
C
Number of elements between two pointer are: 5. Number of bytes between two pointers are: 5
D
Compiler Error
E
Runtime Error
' , 'a' , 'difficult');
insert into string values (1 , 'Consider the following code. The function myStrcat concatenates two strings. It appends all characters of b to end of a. So the expected output is "Geeks Quiz". The program compiles fine but produces segmentation fault when run.
#include <stdio.h>
 
void myStrcat(char *a, char *b)
{
    int m = strlen(a);
    int n = strlen(b);
    int i;
    for (i = 0; i <= n; i++)
       a[m+i]  = b[i];
}
 
int main()
{
    char *str1 = "Geeks ";
    char *str2 = "Quiz";
    myStrcat(str1, str2);
    printf("%s ", str1);
    return 0;
}
Which of the following changes can correct the program so that it prints "Geeks Quiz"?
A
char *str1 = "Geeks "; can be changed to char str1[100] = "Geeks ";
B
char *str1 = "Geeks "; can be changed to char str1[100] = "Geeks "; and a line a[m+n-1] = "\0" is added at the end of myStrcat
C
A line a[m+n-1] = "\0" is added at the end of myStrcat
D
A line "a = (char *)malloc(sizeof(char)*(strlen(a) + strlen(b) + 1)) is added at the beginning of myStrcat()
' ,"a" ,"easy");
insert into string values (2 , 'What is the output of following program?
# include <stdio.h>
 
int main()
{
   char str1[] = "GeeksQuiz";
   char str2[] = {"G", "e", "e", "k", "s", "Q", "u", "i", "z"};
   int n1 = sizeof(str1)/sizeof(str1[0]);
   int n2 = sizeof(str2)/sizeof(str2[0]);
   printf("n1 = %d, n2 = %d", n1, n2);
   return 0;
}
Run on IDE
A
n1 = 10, n2 = 9
B
n1 = 10, n2 = 10
C
n1 = 9, n2 = 9
D
n1 = 9, n2 = 10
' ,'a' ,'medium');
insert into string values (3 , 'What is the output of following program?
#include<stdio.h>
void swap(char *str1, char *str2)
{
  char *temp = str1;
  str1 = str2;
  str2 = temp;
}  
   
int main()
{
  char *str1 = "Geeks";
  char *str2 = "Quiz";
  swap(str1, str2);
  printf("str1 is %s, str2 is %s", str1, str2);
  return 0;
}
Run on IDE
A
str1 is Quiz, str2 is Geeks
B
str1 is Geeks, str2 is Quiz
C
str1 is Geeks, str2 is Geeks
D
str1 is Quiz, str2 is Quiz
' ,'b' ,'diifficult');
insert into string values (4 , 'Predict the output?
#include <stdio.h>
int fun(char *str1)
{
  char *str2 = str1;
  while(*++str1);
  return (str1-str2);
}
 
int main()
{
  char *str = "GeeksQuiz";
  printf("%d", fun(str));
  return 0;
}
Run on IDE
A
10
B
9
C
8
D
Random Number
' ,'b' ,'difficult');
insert into string values (5 , 'What does the following fragment of C-program print?
char c[] = "GATE2011"; 
char *p =c; 
printf("%s", p + p[3] - p[1]) ;
Run on IDE
A
GATE2011
B
E2011
C
2011
D
011
' ,'c' ,'difficult');
insert into string values (6 , '#include<stdio.h>
int main()
{
    char str[] = "GeeksQuiz";
    printf("%s %s %sn", &str[5], &5[str], str+5);
    printf("%c %c %cn", *(str+6), str[6], 6[str]);
    return 0;
}
Run on IDE
A
Runtime Error
B
Compiler Error
C
uiz uiz uiz u u u
D
Quiz Quiz Quiz u u u
' ,'d' ,'medium');
