USE springbootapps;

-- create category table tbl_category
CREATE TABLE IF NOT EXISTS `springbootapps`.`tbl_category` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `category_name` VARCHAR(255) NULL DEFAULT NULL);

-- create book table tbl_book
CREATE TABLE IF NOT EXISTS `springbootapps`.`tbl_book` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `sku` VARCHAR(255) DEFAULT NULL,
  `name` VARCHAR(255) DEFAULT NULL,
  `description` VARCHAR(255) DEFAULT NULL,
  `unit_price` DECIMAL(13,2) DEFAULT NULL,
  `image_url` VARCHAR(255) DEFAULT NULL,
  `active` BIT DEFAULT 1,
  `units_in_stock` INT(11) DEFAULT NULL,
   `date_created` DATETIME DEFAULT NULL,
  `last_updated` DATETIME DEFAULT NULL,
  `category_id` BIGINT(20) NOT NULL,
  FOREIGN KEY (`category_id`) REFERENCES `tbl_category` (`id`)
);

-- insert sample data to category table
INSERT INTO tbl_category(category_name) VALUES ('Web Development');
INSERT INTO tbl_category(category_name) VALUES ('Programming');
INSERT INTO tbl_category(category_name) VALUES ('Databases');
INSERT INTO tbl_category(category_name) VALUES ('Administration');

-- insert sample data to book table
INSERT INTO tbl_book 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'webdevelopment-100', 
    'Python for SAS Users', 
    'Business users familiar with Base SAS programming can now learn Python by example. You will learn via examples that map SAS programming constructs and coding patterns into their Python equivalents.',
    'assets/images/webdevelopment/webdevelopment-100.jpg',
    1,
    100,
    600.00,
    1, 
    NOW()
);

INSERT INTO tbl_book 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'webdevelopment-101', 
    'Deep Learning with JavaScript', 
    'Deep learning has transformed the fields of computer vision, image processing, and natural language applications.',
    'assets/images/webdevelopment/webdevelopment-101.jpg',
    1,
    100,
    700.00,
    1, 
    NOW()
);

INSERT INTO tbl_book 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'webdevelopment-102', 
    'Clean Ruby', 
    'Learn how to make better decisions and write cleaner Ruby code. This book shows you how to avoid messy code that is hard to test and which cripples productivity.',
    'assets/images/webdevelopment/webdevelopment-102.jpg',
    1,
    100,
    800.00,
    1, 
    NOW()
);

INSERT INTO tbl_book 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'webdevelopment-103', 
    'Practices of the Python Pro', 
    'Professional developers know the many benefits of writing application code that’s clean, well-organized, and easy to maintain.',
    'assets/images/webdevelopment/webdevelopment-103.jpg',
    1,
    100,
    900.00,
    1, 
    NOW()
);

INSERT INTO tbl_book 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'webdevelopment-104', 
    'Flutter in Action', 
    'In 2017, consumers downloaded 178 billion apps, and analysts predict growth to 258 billion by 2022. Mobile customers are demanding more-and better-apps',
    'assets/images/webdevelopment/webdevelopment-104.jpg',
    1,
    100,
    1000.00,
    1, 
    NOW()
);

INSERT INTO tbl_book 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'webdevelopment-105', 
    'RabbitMQ in Depth', 
    'RabbitMQ in Depth is a practical guide to building and maintaining message-based applications. This book provides detailed',
    'assets/images/webdevelopment/webdevelopment-105.jpg',
    1,
    100,
    500.00,
    1, 
    NOW()
);

INSERT INTO tbl_book 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'webdevelopment-106', 
    'Beginning Git and GitHub', 
    'Learn the fundamentals of version control through step-by-step tutorials that will teach you the ins-and-outs of Git. This book is your complete guide to',
    'assets/images/webdevelopment/webdevelopment-106.jpg',
    1,
    100,
    600.00,
    1, 
    NOW()
);

INSERT INTO tbl_book 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'webdevelopment-107', 
    'Designing Microservices with Django', 
    'Explore microservices using the Python-based Django framework and review the benefits and drawbacks of them. This book will examine what microservices look like',
    'assets/images/webdevelopment/webdevelopment-107.jpg',
    1,
    100,
    700.00,
    1, 
    NOW()
);

INSERT INTO tbl_book 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'webdevelopment-108', 
    'Python Projects for Beginners', 
    'mmerse yourself in learning Python and introductory data analytics with this book’s project-based approach. Through the structure of a ten-week coding bootcamp course',
    'assets/images/webdevelopment/webdevelopment-108.jpg',
    1,
    100,
    800.00,
    1, 
    NOW()
);

INSERT INTO tbl_book 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'webdevelopment-109', 
    'Pro D3.js', 
    'Go beyond the basics of D3.js to create maintainable, modular, and testable charts and to package them into a library that can be distributed as open source software',
    'assets/images/webdevelopment/webdevelopment-109.jpg',
    1,
    100,
    900.00,
    1, 
    NOW()
);

INSERT INTO tbl_book 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'programming-100', 
    'Problem Solving with C++', 
    'Walter Savitch’s Problem Solving with C++” is one of the most widely used textbooks for the introductory programming in C++ course.',
    'assets/images/programming/programming-100.jpg',
    1,
    100,
    400.00,
    2, 
    NOW()
);

INSERT INTO tbl_book 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'programming-101', 
    'Introducing Jakarta EE CDI', 
    'Discover the Jakarta EE Contexts and Dependency Injection (CDI 2.0) framework which helps you write better code through the use of well-defined enterprise',
    'assets/images/programming/programming-101.jpg',
    1,
    100,
    500.00,
    2, 
    NOW()
);

INSERT INTO tbl_book 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'programming-102', 
    'Python for Informatics', 
    'This book is designed to introduce students to programming and computational thinking through the lens of exploring data. You can think of Python as your tool',
    'assets/images/programming/programming-102.jpg',
    1,
    100,
    600.00,
    2, 
    NOW()
);

INSERT INTO tbl_book 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'programming-103', 
    'Practical MATLAB Deep Learning', 
    'Harness the power of MATLAB for deep-learning challenges. This book provides an introduction to deep learning and using MATLAB’s deep-learning toolboxes.',
    'assets/images/programming/programming-103.jpg',
    1,
    100,
    700.00,
    2, 
    NOW()
);

INSERT INTO tbl_book 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'programming-104', 
    'Advanced Robotic Vehicles Programming', 
    'Learn how to program robotic vehicles with ardupilot libraries and pixhawk autopilot, both of which are open source technologies with a global scope',
    'assets/images/programming/programming-104.jpg',
    1,
    100,
    800.00,
    2, 
    NOW()
);

INSERT INTO tbl_book 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'programming-105', 
    'Exploring the .NET Core 3.0 Runtime', 
    'Explore advanced .NET APIs and create a basic .NET core library with dynamic code generation and metadata inspection to be used by other libraries or client applications',
    'assets/images/programming/programming-105.jpg',
    1,
    100,
    900.00,
    2, 
    NOW()
);

INSERT INTO tbl_book 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'programming-106', 
    'Introducing Algorithms in C', 
    'Study elementary and complex algorithms with clear examples and implementations in C. This book introduces data types (simple and structured) and algorithms',
    'assets/images/programming/programming-106.jpg',
    1,
    100,
    900.00,
    2, 
    NOW()
);

INSERT INTO tbl_book 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'programming-107', 
    'Modern C', 
    'If you think “Modern” and “C” don’t belong in the same sentence, think again. The C standards committee actively reviews and extends the language',
    'assets/images/programming/programming-107.jpg',
    1,
    100,
    1000.00,
    2, 
    NOW()
);

INSERT INTO tbl_book 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'programming-108', 
    'Raspberry Pi Projects for Kids', 
    'Learn coding and electronics through 12 original and daring projects that hack wireless signals.',
    'assets/images/programming/programming-108.jpg',
    1,
    100,
    500.00,
    2, 
    NOW()
);

INSERT INTO tbl_book 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'programming-109', 
    'Enterprise Java Microservices', 
    'Enterprise Java Microservices is an example-rich tutorial that shows how to design and manage large-scale Java applications as a collection of microservices.',
    'assets/images/programming/programming-109.jpg',
    1,
    100,
    600.00,
    2, 
    NOW()
);

INSERT INTO tbl_book 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'databases-100', 
    'Pro T-SQL 2019', 
    'Design and write simple and efficient T-SQL code in SQL Server 2019 and beyond. Writing T-SQL that pulls back correct results can be challenging.',
    'assets/images/databases/databases-100.jpg',
    1,
    100,
    400.00,
    3, 
    NOW()
);

INSERT INTO tbl_book 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'databases-101', 
    'Practical Oracle Cloud Infrastructure', 
    'Use this fast-paced and comprehensive guide to build cloud-based solutions on Oracle Cloud Infrastructure. You will understand cloud infrastructure',
    'assets/images/databases/databases-101.jpg',
    1,
    100,
    500.00,
    3, 
    NOW()
);

INSERT INTO tbl_book 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'databases-102', 
    'Mastering Large Datasets with Python', 
    'Modern data science solutions need to be clean, easy to read, and scalable. In Mastering Large Datasets with Python, author J.T. Wolohan',
    'assets/images/databases/databases-102.jpg',
    1,
    100,
    600.00,
    3, 
    NOW()
);

INSERT INTO tbl_book 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'databases-103', 
    'SQL Server Big Data Clusters', 
    'Get a head-start on learning one of SQL Server 2019’s latest and most impactful features―Big Data Clusters―that combines large volumes of non-relational data',
    'assets/images/databases/databases-103.jpg',
    1,
    100,
    700.00,
    3, 
    NOW()
);

INSERT INTO tbl_book 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'databases-104', 
    'Refactoring Legacy T-SQL for Improved Performance', 
    'Breathe new life into older applications by refactoring T-SQL queries and code using modern techniques. This book shows you how to significantly improve',
    'assets/images/databases/databases-104.jpg',
    1,
    100,
    800.00,
    3, 
    NOW()
);

INSERT INTO tbl_book 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'databases-105', 
    'Data Science Programming All-In-One For Dummies', 
    'Data science is exploding―in a good way―with a forecast of 1.7 megabytes of new information created every second for each human being on',
    'assets/images/databases/databases-105.jpg',
    1,
    100,
    900.00,
    3, 
    NOW()
);

INSERT INTO tbl_book 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'databases-106', 
    'MongoDB: The Definitive Guide', 
    'Manage your data with a system designed to support modern application development. Updated for MongoDB 4.2, the third edition of this authoritative',
    'assets/images/databases/databases-106.jpg',
    1,
    100,
    1000.00,
    3, 
    NOW()
);

INSERT INTO tbl_book 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'databases-107', 
    'The Definitive Guide to AWS Application Integration', 
    'Build reliable, asynchronous, and distributed applications using message queuing and task orchestration capabilities of Amazon Web Services (AWS) Application Integration.',
    'assets/images/databases/databases-107.jpg',
    1,
    100,
    400.00,
    3, 
    NOW()
);

INSERT INTO tbl_book 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'databases-108', 
    'Jumpstart Snowflake', 
    'Explore the modern market of data analytics platforms and the benefits of using Snowflake computing, the data warehouse built for the cloud.',
    'assets/images/databases/databases-108.jpg',
    1,
    100,
    500.00,
    3, 
    NOW()
);

INSERT INTO tbl_book 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'databases-109', 
    'MongoDB Recipes', 
    'Get the most out of MongoDB using a problem-solution approach. This book starts with recipes on the MongoDB query language, including how to query',
    'assets/images/databases/databases-109.jpg',
    1,
    100,
    600.00,
    3, 
    NOW()
);

INSERT INTO tbl_book 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'administration-100', 
    'cPanel User Guide and Tutorial', 
    'A clear, complete guide to getting the most from cPanel. Anybody who has a web hosting account that provides cPanel, and who wants to get the most from this very powerful tool.',
    'assets/images/administration/administration-100.jpg',
    1,
    100,
    400.00,
    4, 
    NOW()
);

INSERT INTO tbl_book 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'administration-101', 
    'Professional Outlook 2007 Programming', 
    'Written by one of the most popular and knowledgeable Microsoft Outlook MVPs, this book fills a void in the market for a professional-level Outlook programming book',
    'assets/images/administration/administration-101.jpg',
    1,
    100,
    500.00,
    4, 
    NOW()
);

INSERT INTO tbl_book 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'administration-102', 
    'Pro Java Clustering and Scalability', 
    'Build clustered and scalable Java-based, real-time applications using Spring Framework, Boot, WebSocket, Cassandra, Redis and RabbitMQ. In this book',
    'assets/images/administration/administration-102.jpg',
    1,
    100,
    600.00,
    4, 
    NOW()
);

INSERT INTO tbl_book 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'administration-103', 
    'Modular Design Frameworks', 
    'Learn the basic principles of modular design, and then put them into action to create sites that are easy to use, look great.',
    'assets/images/administration/administration-103.jpg',
    1,
    100,
    700.00,
    4, 
    NOW()
);

INSERT INTO tbl_book 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'administration-104', 
    'Applied OpenStack Design Patterns', 
    'Learn practical and applied OpenStack cloud design solutions to gain maximum control over your infrastructure. You will achieve a complete controlled and customizable platform.',
    'assets/images/administration/administration-104.jpg',
    1,
    100,
    800.00,
    4, 
    NOW()
);

INSERT INTO tbl_book 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'administration-105', 
    'VMware vSphere Performance', 
    'Covering the latest VMware vSphere software, an essential book aimed at solving vSphere performance problems before they happen',
    'assets/images/administration/administration-105.jpg',
    1,
    100,
    900.00,
    4, 
    NOW()
);

INSERT INTO tbl_book 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'administration-106', 
    'VMware vSphere For Dummies', 
    'With virtualization, a single server can host dozens or hundreds of virtual machines running a variety of operating systems, and even hook them together in a virtual network',
    'assets/images/administration/administration-106.jpg',
    1,
    100,
    1000.00,
    4, 
    NOW()
);

INSERT INTO tbl_book 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'administration-107', 
    'Beginning Elastic Stack', 
    'This book teaches you how to install, configure and implement the Elastic Stack (Elasticsearch, Logstash and Kibana) – the invaluable tool for anyone',
    'assets/images/administration/administration-107.jpg',
    1,
    100,
    300.00,
    4, 
    NOW()
);

INSERT INTO tbl_book 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'administration-108', 
    'Nginx: From Beginner to Pro', 
    'Teaches you to start up Nginx and quickly take your expertise to a level where you can comfortably work with various aspects of the web server and make informe',
    'assets/images/administration/administration-108.jpg',
    1,
    100,
    400.00,
    4, 
    NOW()
);

INSERT INTO tbl_book 
(
	sku, 
	name, 
    description, 
    image_url, 
    active, 
    units_in_stock,
    unit_price, 
    category_id,
    date_created
)
VALUES 
(
	'administration-109', 
    'Web Audio API', 
    'Go beyond HTML5’s Audio tag and boost the audio capabilities of your web application with the Web Audio API. Packed with lots of code examples',
    'assets/images/administration/administration-109.jpg',
    1,
    100,
    500.00,
    4, 
    NOW()
);