/* 
   create table時にテーブルタイプを指定しない場合は
   カラム型のテーブルが作成されます(HANA2 SPS03より)
*/
create COLUMN TABLE books(
    id BIGINT,
    isbn VARCHAR(128),
    category VARCHAR(128),
    publish_date TIMESTAMP,
    publisher VARCHAR(128),
    price FLOAT
);

create COLUMN TABLE customers(
    id BIGINT,
    name VARCHAR(128),
    date_of_birth TIMESTAMP,
    gender VARCHAR(128),
    state VARCHAR(128),
    email VARCHAR(256),
    phone VARCHAR(128)
);

create COLUMN TABLE transactions(
    id BIGINT,
    customer_id BIGINT,
    book_id BIGINT,
    quantity INT,
    transaction_date TIMESTAMP
);
