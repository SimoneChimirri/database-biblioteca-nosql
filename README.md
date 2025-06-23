# database-biblioteca-nosql
Compito di MongoDB

This document describes the structure and schema design of the non-relational (NoSQL) database used for the Library Management System.
The database is designed to store information about books, authors, publishers, loans, and users in a scalable and flexible manner using a document-based structure, MongoDB.

The database consists of five main collections:
1. books
2. authors
3. publishers
4. loans
5. users 

The data are created in a JSON format also using AI and then they are inserted in MongoDB Compass through a .sh script.

Every book has an ISBN code and a title, while other information could regard
genre, language, publication year and rating.

In the 'books' collection the reference to the author and the publisher is embedded, 
including for both the respective ids and names. 
In this way, it's easier to filter the search by author's name or by publisher's name.

Each author, besides id and name, could contain the date of birth and the nationality,
while each publisher may have a country and year of foundation indicated.

In the 'loans' collection we have an id, an external reference to the user_id
and embedded information about books (isbn and title), to know faster if a book
with a precise title is on loan or not at the moment and if i'ts available.
The other substantial information is temporal: borrow date, eventual return date and due date.

Finally, the 'users' collection contains many fields about personal data of the client and 
some embedded references to the loans, which permit us to find accurate details about the loans 
of the person at issue.
