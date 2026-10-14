# GameFinder | COM1028 - Software Engineering

GameFinder is a Java web application that uses an API for exploring a read-only video game database. It was developed as part of the COM1034 - Software Engineering module at the University of Surrey and demonstrates clean software architecture, a tested codebase, and a practical web API. GameFinder provides programmatic access to video games and related information stored in a local SQLite dataset. The API supports querying games, retrieving information about individual games, and exploring relationships between games and associated data. The application is intentionally read-only: the database is used as a sample dataset and is not modified by the application.

**Key Features:**
* Java backend using Javalin, a lightweight web framework

* Data Access Object (DAO) layer for interacting with a SQLite database via JDBC

* RESTful API endpoints for retrieving video game information and related data

* Structured separation of models, data access and controller logic

* Unit and integration tests to verify application functionality and API behaviour

**Tech Stack:**
* Backend: Java, Javalin

* Database: SQLite (development), in-memory SQLite for tests

* Testing: JUnit 5, Mockito, REST-assured

* Build: Maven

**Implementation Requirements:**
The application was developed to meet the module's assessed criteria, covering core API functionality, data access, additional endpoints, and automated testing. The implementation follows a layered architecture to separate data models, database access and request handling, supporting maintainability and testability.
