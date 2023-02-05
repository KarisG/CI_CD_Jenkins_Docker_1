from flask import Flask, request
from tensorflow import keras

app = Flask(__name__)
class_names = ['T-shirt/top','Trouser','Pullover','Dress','Coat','Sandal','Shirt','Sneaker','Bag','Ankle boot']

@app.route('/classify', methods=['POST'])
def predict():
    input_data = request.get_json()
    
    to_predict = np.array(input_data["data"]).reshape(-1, 28, 28, 1)
    model = keras.models.load_model('TP7MLOPS.h5')

    prediction = model.predict(to_predict)
    result = np.argmax(prediction[0], axis = 0)
    
    return class_names[result]

if __name__ == '__main__':
    app.run()
