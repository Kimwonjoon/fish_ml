from ~~
from fishmlserv.model.manager import get_model_path
import pickle
def knn_model(length, weight):
    model_path = get_model_path()
    with open(model_path, 'rb') as f:
        fish_model = pickle.load(f)

    prediction = fish_model.predict([[length, weight]])
    if prediction == 0:
        fish_name = "Bream"
    else:
        fish_name = "Smelt"
    print(f'물고기 예측 결과는 {fish_name}입니다.')
    return fish_name
