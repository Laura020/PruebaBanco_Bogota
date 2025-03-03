from google.cloud import storage
import pandas as pd
from io import StringIO

# Inicializar el cliente de almacenamiento
client = storage.Client()

# El nombre de tu bucket y archivo
bucket_name = 'data-lake-transacciones'
file_name = 'datos_transacciones_limpio.csv'

# Descargar el archivo desde GCS
bucket = client.bucket(bucket_name)
blob = bucket.blob(file_name)
data = blob.download_as_text()  # Descargar el archivo como texto

# Leer el CSV desde el texto descargado
df = pd.read_csv(StringIO(data))
print(df.head())  # Muestra las primeras filas del DataFrame
