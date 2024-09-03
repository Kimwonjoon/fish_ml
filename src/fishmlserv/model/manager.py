#import pickle
import os
def get_model_path():
    #path = os.path.dirname(os.path.abspath(__file__))
    path = os.path.dirname(__file__)
    model_path = path + "/" + "model.pkl"
#    with open(model_path, 'rb') as f:
#        fish_model = pickle.load(f)
    print(model_path)
    return model_path
#print(get_model_path())
