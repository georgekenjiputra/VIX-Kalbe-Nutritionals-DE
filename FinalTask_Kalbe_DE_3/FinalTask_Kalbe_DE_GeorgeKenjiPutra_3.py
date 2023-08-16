# Melakukan import mysql connector
import mysql.connector

# Melakukan percobaan koneksi
conn = mysql.connector.connect(
    host = 'localhost', user = 'root', password = ':A~_Xt7!Tn', database = 'KARYAWAN')
'''
Untuk host, user, password, dan database akan diisi sesuai dengan
keadaan yang sebenarnya, kode ini hanyalah contoh belaka.
'''

# Membuat object cursor sebagai penanda
cursor = conn.cursor()

# Deklarasi SQL Query untuk memasukan record ke DB (KARYAWAN)
insert_sql = ("INSERT INTO KARYAWAN (FIRST_NAME, LAST_NAME, AGE, SEX, INCOME)"
              "VALUES (%s, %s, %s, %s, %s)"
)

values = ('Teguh', 'Pamungkas', 25, 'M', 7000000)
'''
Values di atas hanyalah contoh belaka, harap diisi dengan
data yang sebenarnya.
'''

try:
    # Eksekusi SQL Command
    cursor.execute(insert_sql, values)

    # Melakukan perubahan (commit) pada DB
    conn.commit()
except:
    # Roll Back apabila ada issue
    conn.rollback()

# Menutup Koneksi
conn.close()