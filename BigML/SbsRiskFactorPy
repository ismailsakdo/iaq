# Requires BigML Python bindings
#
# Install via: pip install bigml
#
# or clone it:
#   git clone https://github.com/bigmlcom/python.git
from bigml.deepnet import Deepnet
from bigml.api import BigML
# Downloads and generates a local version of the DEEPNET,
# if it hasn't been downloaded previously.
deepnet = Deepnet('deepnet/6311e17b8f679a2d49001087',
                  api=BigML("myibrick",
                            "ef928b5c251cff2ec6fdc612e0d220299edce8e0",
                            domain="bigml.io"))
# To make predictions fill the desired input_data in next line.
input_data = {
    "co2.cat": "0",
    "airflow.cat": "1",
    "tvoc.cat": "1",
    "metsec.cat": "1",
    "hcho.cat": "0",
    "pm2.5cat": "0",
    "riskscore": 1
}
deepnet.predict(input_data, full=True)
#
# input_data: dict for the input values
# (e.g. {"petal length": 1, "sepal length": 3})
# full: if set to True, the output will be a dictionary that includes all the
# available information about the prediction. The attributes vary depending
# on the ensemble type. Please check:
# https://bigml.readthedocs.io/en/latest/#local-deepnet-predictions
