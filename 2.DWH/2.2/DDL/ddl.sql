CREATE TABLE IF NOT EXISTS public.readers (
    id_reader serial PRIMARY KEY,
    fio varchar(255) NOT NULL,
    adress varchar(255),
    phone_number varchar(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS public.books (
    id_book serial PRIMARY KEY,
    book_name varchar(255),
    author varchar(255),
    create_date date,
    sheets smallint,
    cost integer,
    amount integer
);

CREATE TABLE IF NOT EXISTS public.rent (
    id_rent serial PRIMARY KEY,
    id_book integer,
    id_reader integer,
    date_rent date,
    FOREIGN KEY (id_book) REFERENCES books (id_book) ON DELETE SET NULL,
    FOREIGN KEY (id_reader) REFERENCES readers (id_reader) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS public.return (
    id_rent serial PRIMARY KEY,
    id_book integer,
    id_reader integer,
    date_return date,
    FOREIGN KEY (id_book) REFERENCES books (id_book) ON DELETE SET NULL,
    FOREIGN KEY (id_reader) REFERENCES readers (id_reader) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS public.publishing_office (
    office_name varchar(255) PRIMARY KEY,
    city varchar(255)
);

CREATE TABLE IF NOT EXISTS public.publishing_book (
    id_publishing serial PRIMARY KEY,
    id_book integer,
    office_name varchar(255),
    FOREIGN KEY (id_book) REFERENCES books (id_book) ON DELETE SET NULL,
    FOREIGN KEY (office_name) REFERENCES publishing_office (office_name) ON DELETE SET NULL
);