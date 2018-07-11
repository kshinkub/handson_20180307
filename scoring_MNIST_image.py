import tensorflow as tf
def _float_feature(value):
    return tf.train.Feature(float_list=tf.train.FloatList(value=value))

import glob
import os
from PIL import Image
import numpy as np
from grpc.beta import implementations
from tensorflow_serving.apis import predict_pb2
from tensorflow_serving.apis import prediction_service_pb2

host = 'localhost'
port = 9000

print('tensorflow serving works at '+host+':'+str(port))
channel = implementations.insecure_channel(host, int(port))
stub = prediction_service_pb2.beta_create_PredictionService_stub(channel)

img_files = glob.glob("/tmp/sample/test/tf/*")
for img_file in img_files:
    print('predicting... '+img_file)
    label = int(os.path.basename(img_file).split("_")[1])
    print('lavel='+str(label))

    image = Image.open(img_file).convert('L')
    image.thumbnail((28, 28))
    image = np.array(image, dtype=np.float32)
    image = np.array(image / 255)
    image = image.reshape(1, 784)

    request = predict_pb2.PredictRequest()
    request.model_spec.name = 'mnist'
    request.model_spec.signature_name = 'predict_images'
    request.inputs['images'].CopyFrom(
        tf.contrib.util.make_tensor_proto(image[0], shape=[1, image[0].size]))
    result_future = stub.Predict.future(request, 5.0)
    scores = np.array(
          result_future.result().outputs['scores'].float_val)
    prediction = np.argmax(scores)
    print('prediction='+str(prediction))
    print(scores)
