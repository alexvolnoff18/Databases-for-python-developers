import psycopg2


class DataBase:
    def __init__(self, database, user, password):
        """
        Фенкция для подключения к базе данных
        """
        self.conn = psycopg2.connect(
            database=database,
            user=user,
            password=password)
        self.cur = self.conn.cursor()

    def close(self):
        """
        Функция для закрытия сеанаса работы с базой данных
        """
        self.cur.close()
        self.conn.close()

    def create_db(self, params=None):
        """
         Функция, создающая структуру БД (таблицы)
        """
        self.cur.execute(params or ())
        self.conn.commit()

    def delete_db(self, params):
        """
        Функция для удаления таблиц
        """
        self.cur.execute(params)
        self.conn.commit()

    def add_phone(self, client_id=None, phone_number=None):
        """
        Функция, позволяющая добавить телефон для существующего клиента
        """
        self.cur.execute("""
        INSERT INTO phone(client_id, phone_number)
        VALUES (%s, %s);""", (client_id, phone_number))
        self.conn.commit()

    def add_client(self, name=None, lastname=None, email=None, phone_number=None):
        """
        Функция, позволяющая добавить нового клиента
        """
        self.cur.execute("""
        INSERT INTO clients(name, lastname, email)
        VALUES (%s, %s, %s);
        """, (name, lastname, email))
        self.cur.execute("""
        SELECT client_id FROM clients WHERE name= %s;
        """, (name,))
        client_id = self.cur.fetchone()[0]
        print(client_id)
        self.conn.commit()
        if phone_number is None:
            pass
        else:
            DataBase.add_phone(self, client_id, phone_number)
            self.conn.commit()

    def update_client(self, client_id=None, name=None, lastname=None, email=None):
        """
        Функция, позволяющая изменить данные о клиенте
        """
        self.cur.execute("""
           SELECT * from clients
           WHERE client_id = %s
           """, (client_id,))
        selected_client = self.cur.fetchone()
        print(selected_client)
        if name is None:
            name = selected_client[1]
        if lastname is None:
            lastname = selected_client[2]
        if email is None:
            email = selected_client[3]
        self.cur.execute("""
                UPDATE clients
                SET name = %s, lastname = %s, email =%s 
                where client_id = %s
                """, (name, lastname, email, client_id))
        self.conn.commit()
        self.cur.execute("""
                   SELECT * from clients
                   WHERE client_id = %s
                   """, (client_id,))
        update_client = self.cur.fetchone()
        print(update_client)

    def delete_phone(self, phone_number):
        """
        Функция, позволяющая удалить телефон для существующего клиента
        """
        self.cur.execute("""
            DELETE FROM phone 
            WHERE phone_number = %s
            """, (phone_number,))
        self.conn.commit()

    def delete_client(self, client_id):
        """
        Функция, позволяющая удалить существующего клиента
        """
        self.cur.execute("""
            DELETE FROM phone
            WHERE client_id = %s
            """, (client_id,))
        self.cur.execute("""
            DELETE FROM clients 
            WHERE client_id = %s
           """, (client_id,))
        self.conn.commit()

    def find_client(self, name=None, lastname=None, email=None, phone_number=None):
        """
        Функция, позволяющая найти клиента по его данным (имени, фамилии, email-у или телефону)
        """
        if name is None:
            pass
        else:
            name = '%' + name + '%'
        if lastname is None:
            lastname = '%'
        else:
            lastname = '%' + lastname + '%'
        if email is None:
            email = '%'
        else:
            email = '%' + email + '%'
        if phone_number is None:
            self.cur.execute("""
                SELECT c.client_id, c.name, c.lastname, c.email, p.phone_number FROM clients AS c
                LEFT JOIN phone AS p ON c.client_id = p.client_id
                WHERE c.name LIKE %s AND c.lastname LIKE %s
                AND c.email LIKE %s
                """, (name, lastname, email))
        else:
            self.cur.execute("""
                SELECT c.client_id, c.name, c.lastname, c.email, p.phone_number FROM clients AS c
                LEFT JOIN phone AS p ON c.client_id = p.client_id
                WHERE c.name LIKE %s AND c.lastname LIKE %s
                AND c.email LIKE %s AND p.phone_number like %s
                """, (name, lastname, email, phone_number))
        print(self.cur.fetchall())


if __name__ == '__main__':
    db = DataBase("HW5", "postgres", "8z6f9bNQ4B+")

    db.delete_db("""DROP TABLE clients, phone;""")
    db.create_db("""
  CREATE TABLE IF NOT EXISTS clients(
    client_id SERIAL PRIMARY KEY,
    name VARCHAR(64),
    lastname VARCHAR(64),
    email VARCHAR(254)
    );
  """)
    db.create_db("""
  CREATE TABLE IF NOT EXISTS phone(
    phone_id SERIAL primary key,
    client_id INTEGER REFERENCES clients(client_id),
    phone_number varchar(64) not null
    );
  """)

    db.add_client("Василий", "Пупкин", "sobaka@sobaka.ru", "346347347")
    db.add_client("Иван", "Абдырабзалов", "koshka@koshka.ru", "098606549")
    db.add_client("Ашот", "Смирнов", "www@www.ru")
    db.add_phone(1, "5455445845")
    db.update_client(1, "Джон", "Смит")
    db.delete_phone("5455445845")
    db.delete_client(3)
    db.find_client("", "Абдырабзалов")




