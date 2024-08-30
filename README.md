# fishmlserv

### Deploy
![image](https://github.com/user-attachments/assets/3e4b723e-011e-4255-9071-84895c85d19f)

### Run
- dev
- http://127.0.0.1:8000/docs#/
```bash
# uvicorn --help
$ uvicorn src.fishmlserv.main:app --reload
```

- prd
```bash
$ uvicorn src.fishmlserv.main:app --host 0.0.0.0 --port 8949
```
