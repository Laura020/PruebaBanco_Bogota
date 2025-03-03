import apache_beam as beam
pip install apache-beam[gcp]
pip install --upgrade dill
pip install dill==0.3.1.1
pip install --upgrade dill
pip install setuptools wheel
pip install apache-beam[gcp]
pip install dill==0.3.6
pip install dill==0.3.7
pip install --force-reinstall pylint
pip install dill==0.3.1.1
clear
pip install --upgrade dill
pip install apache-beam[gcp]
import apache_beam as beam
pip install --no-cache-dir --upgrade apache-beam[gcp]
import apache_beam as beam
from apache_beam.options.pipeline_options import PipelineOptions
class TransformarDatos(beam.DoFn):
def process(self, row):
values = row.split(',')
if len(values) < 4:
return # Omitir filas incompletas
id_transaccion, monto, fecha, cliente_id = values
try:
monto = float(monto) # Convertir el monto a número
fecha = fecha.strip() # Asegurar formato correcto de fecha
return [(id_transaccion, monto, fecha, cliente_id)]
except:
return # Omitir datos corruptos
options = PipelineOptions(
runner='DataflowRunner',
project='[TU_PROYECTO_GCP]',
temp_location='gs://data-lake-transacciones/temp'
)
with beam.Pipeline(options=options) as p:
( p | 'Leer Archivo' >> beam.io.ReadFromText('gs://data-lake-transacciones/datos_transacciones.csv')
| 'Transformar' >> beam.ParDo(TransformarDatos())
| 'Guardar Limpio' >> beam.io.WriteToText('gs://data-lake-transacciones/procesado/datos_limpios.csv')
)
python dataflow_transformation.py
python
nano dataflow_transformation.py
cat dataflow_transformation.py 
python3 dataflow_transformation.py 
bq mk
datasets.insert
python3 dataflow_transformation.py
pip install pandas
gsutil cp gs://data-lake-transacciones/datos_transacciones.csv datos_transacciones.csv
nano limpiar_csv.py 
python3 limpiar_csv.py 
gsutil cp datos_transacciones_limpio.csv gs://data-lake-transacciones/datos_transacciones_limpio.csv
datos_transacciones_limpio.csv gs://data-lake-transacciones/datos_transacciones_limpio.csv
import pandas as pd
try:
except pd.errors.ParserError as e:
except Exception as e:
import pandas as pd
head -n 10 datos_transacciones_limpio.csv
python3 limpiar_csv.py 
gsutil cp datos_transacciones_limpio.csv gs://data-lake-transacciones/datos_transacciones_limpio.csv
ls -lh | grep datos_transacciones
gsutil cp datos_transacciones.csv gs://data-lake-transacciones/datos_transacciones_corregido.csv
head -n 10 datos_transacciones_corregido.csv
nano limpiar_csv.py 
python3 limpiar_csv.py 
ls -lh
ls -lh | grep datos_transacciones
ls -hl
ls -lh
nano limpiar_csv.py 
ls -lh
python3 limpiar_csv.py 
head -n 5 datos_transacciones.csv
nano limpiar_csv.py 
python3 limpiar_csv.py 
head -n 5 datos_transacciones.csv
nano limpiar_csv.py 
gsutil cp datos_transacciones_limpio.csv gs://data-lake-transacciones/datos_transacciones_limpio.csv
head -n 5 datos_transacciones.csv
head -n 10 datos_transacciones_limpio.csv
sed 's/"//g' datos_transacciones_limpio.csv > datos_transacciones_final.csv
head -n 10 datos_transacciones_limpio.csv
sed 's/"//g' datos_transacciones_limpio.csv > datos_transacciones_final.csv
head -n 10 datos_transacciones_limpio.csv
nano limpiar_csv.py 
head -n 10 datos_transacciones_limpio.csv
python3 limpiar_csv.py 
head -n 10 datos_transacciones_limpio.csv
pip install fsspec
python3 limpiar_csv.py 
pip install gcsfs
python3 limpiar_csv.py 
gsutil cp datos_transacciones_limpio.csv gs://data-lake-transacciones/datos_transacciones_limpio.csv
sed 's/"//g' datos_transacciones_limpio.csv | tr -d '\r' > datos_transacciones_final.csv
python3 limpiar_csv.py 
gsutil cp datos_transacciones_limpio.csv gs://data-lake-transacciones/datos_transacciones_limpio.csv
python3 limpiar_csv.py 
bq ls
bq show --format=prettyjson elevated-nature-452614-k1:dwh_transaccioens
bq ls elevated-nature-452614-k1:dwh_transaccioens
gsutil cp gs://data-lake-transacciones/datos_transacciones_limpio.csv ./datos_transacciones_limpio.csv
python3 limpiar_csv.py 
gsutil cp gs://data-lake-transacciones/datos_transacciones_limpio.csv ./datos_transacciones_limpio.csv
head -n 10 datos_transacciones_limpio.csv
pip install google-cloud-bigquery
from google.cloud import bigquery
from google.cloud import storage
# Inicializa el cliente de BigQuery y Google Cloud Storage
bq_client = bigquery.Client()
storage_client = storage.Client()
# Ruta del archivo CSV en GCS
bucket_name = 'data-lake-transacciones'
file_name = 'datos_transacciones_limpio.csv'
uri = f'gs://{bucket_name}/{file_name}'
# Define el dataset y la tabla de destino
project_id = 'elevated-nature-452614-k1'
dataset_id = 'dwh_transaccioens'
table_id = 'Campos'
# Configura el esquema de la tabla (si no es autodetectado)
schema = [
]
# Configura las opciones de carga
job_config = bigquery.LoadJobConfig(
)
# Carga los datos desde GCS a BigQuery
load_job = bq_client.load_table_from_uri(
)
# Espera a que se complete la carga
load_job.result() print(f'Carga de datos completada en la tabla {table_id} de {dataset_id}')
python3 limpiar_csv.py 
gsutil ls gs://data-lake-transacciones/
nano limpiar_csv.py 
bq load --source_format=CSV --autodetect elevated-nature-452614-k1:dwh_transacciones.Transacciones gs://data-lake-transacciones/datos_transacciones_limpio.cs
bq load --source_format=CSV --autodetect elevated-nature-452614-k1:dwh_transacciones.Transacciones gs://data-lake-transacciones/datos_transacciones_limpio.csv
elevated-nature-452614-k1:bqjob_r41bbe8e5f7391a3e_000001955d345186_1
pip install google-cloud-bigquery
nano limpiar_csv.py 
bq load --source_format=CSV --replace --field_delimiter="," elevated-nature-452614-k1:dwh_transacciones.Transacciones gs://data-lake-transacciones/datos_transacciones_limpio.csv id_transaccion:STRING,monto:FLOAT,fecha:TIMESTAMP,cliente_id:STRING
nano limpiar_csv.py 
python3 limpiar_csv.py 
bq_client = bigquery.Client()
gsutil cp gs://data-lake-transacciones/
gsutil cp gs://data-lake-transaccione
gsutil ls gs://data-lake-transacciones/
bq load --source_format=CSV --skip_leading_rows=1 --autodetect project_id:dataset_id.table_name gs://data-lake-transacciones/datos_transacciones_limpio.csv
gcloud config get-value project
bq load --source_format=CSV --skip_leading_rows=1 --autodetect elevated-nature-452614-k1:mi_dataset.mi_tabla gs://data-lake-transacciones/datos_transacciones_limpio.csv
bq ls --project_id=elevated-nature-452614-k1
bq load --source_format=CSV --skip_leading_rows=1 --autodetect elevated-nature-452614-k1:dwh_transacciones.mi_tabla gs://data-lake-transacciones/datos_transacciones_limpio.csv
bq query --use_legacy_sql=false "SELECT * FROM \`elevated-nature-452614-k1.dwh_transacciones.mi_tabla\` LIMIT 10"
bq mk --table --partition_field fecha_transaccion --time_partitioning_type DAY --schema "campo1:STRING,campo2:INTEGER,campo3:DATE" proyecto_id:dataset_id.mi_tabla_particionada
head -n 5 datos_transacciones.csv
git --version
brew install git
git config --global user.name laura020
git config --global user.name "laura020"
git config --global user.email "laura199863@gmail.com"
git config --list
ls
cd ~/datos_transacciones_final.csv
git init
git add datos_transacciones_final.csv
git add .
git commit -m "Agregado archivo CSV de transacciones"
git remote add origin https://github.com/Laura020/Prueba-BancoBogota.git
git push -u origin main
git remote add origin https://github.com/Laura020/Prueba-BancoBogota.git
git push -u origin main
git init
git add .
git commit -m "Prueba_Banco"
git push -u origin master
git remote add origin https://github.com/Laura020/Prueba-BancoBogota.git
git remote add origin https://github.com/Laura020/Prueba_BancoBogota.git
cls
clear
git init
git commit -m "Prueba"
git add .
git commit -m "Prueba"
git branch -M main
git remote add origin https://github.com/Laura020/Prueba_BancoBogota.git
git push -u origin main
git status
git reset
git status
clear
git init
git commit -m "Prueba"
git add .
git commit -m "Prueba"
git branch -M main
git remote add origin https://github.com/Laura020/PruebaBanco_Bogota.git
git push -u
git push -u origin main
git init
git remote -v 
origin  https://github.com/tu_usuario/tu_repositorio.git (fetch)
origin  https://github.com/tu_usuario/tu_repositorio.git (push)
git remote add origin "https://github.com/tu_usuario/tu_repositorio.git"
echo $(ls)
git remote remove origin
git remote -v
rm -rf .git
clear
git init
