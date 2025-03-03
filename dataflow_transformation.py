
import apache_beam as beam
from apache_beam.options.pipeline_options import PipelineOptions

class TransformarDatos(beam.DoFn):
    def process(self, row):
        values = row.split(',')
        if len(values) < 4:
            return  # Omitir filas incompletas

        id_transaccion, monto, fecha, cliente_id = values
        try:
            monto = float(monto)  # Convertir el monto a número
            fecha = fecha.strip()  # Asegurar formato correcto de fecha
            return [(id_transaccion, monto, fecha, cliente_id)]
        except:
            return  # Omitir datos corruptos

# Configuración del pipeline de Dataflow
options = PipelineOptions(
    runner='DataflowRunner',
    project='dataflow_transformation.py',  # ⚠ Reemplaza esto con el ID de tu proyecto GCP
    temp_location='gs://data-lake-transacciones/temp'
)

