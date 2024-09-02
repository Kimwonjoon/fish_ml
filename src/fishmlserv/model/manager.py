import os
def get_model_path():
    path = os.path.dirname(os.path.abspath(__file__)) + "/model.pkl"
    return path
#print(get_model_path())
