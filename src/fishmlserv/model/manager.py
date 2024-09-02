import os
#import pickle
def get_model_path():
    path = os.path.dirname(os.path.abspath(__file__))
    model_path = path + "/model.pkl"
#    with open(model_path, 'rb') as f:
#        fish_model = pickle.load(f)
    return model_path
#print(get_model_path())
