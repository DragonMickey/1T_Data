CREATE TABLE IF NOT EXISTS public.readers (
    id_reader serial PRIMARY KEY,
    fio varchar(255) NOT NULL,
    adress varchar(255),
    phone_number varchar(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS public.books (
    id_book serial PRIMARY KEY,
    book_name varchar(255) NOT NULL,
    create_date date,
    sheets smallint,
    cost integer,
    amount integer NOT NULL
);

CREATE TABLE IF NOT EXISTS public.transaction (
    id_rent serial PRIMARY KEY,
    id_book integer NOT NULL,
    id_reader integer NOT NULL,
    rent_date date,
    return_date date,
    FOREIGN KEY (id_book) REFERENCES books (id_book) ON DELETE SET NULL,
    FOREIGN KEY (id_reader) REFERENCES readers (id_reader) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS public.publishing_office (
    office_name varchar(255) PRIMARY KEY,
    city varchar(255)
);

CREATE TABLE IF NOT EXISTS public.publishing_book (
    id_publishing serial PRIMARY KEY,
    id_book integer NOT NULL,
    office_name varchar(255) NOT NULL,
    FOREIGN KEY (id_book) REFERENCES books (id_book) ON DELETE SET NULL,
    FOREIGN KEY (office_name) REFERENCES publishing_office (office_name) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS public.author (
    id_author serial PRIMARY KEY,
    author varchar(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS public.book_author (
    id_book_author serial PRIMARY KEY,
    id_book integer NOT NULL,
    id_author integer NOT NULL,
    FOREIGN KEY (id_book) REFERENCES books (id_book) ON DELETE SET NULL,
    FOREIGN KEY (id_author) REFERENCES author (id_author) ON DELETE SET NULL
);