import sys
import platform

# output.txt に書き込む
file_path = "/workspace/data/output.txt"  # コンテナ内でのパス
with open(file_path, "w") as file:
    file.write("これはDocker内で書き込まれたテキストです。")
print("ファイルに書き込みました:", file_path)



print("NumPy version:", np.__version__)
print("Pandas version:", pd.__version__)
print("Matplotlib version:", matplotlib.__version__)
print("Scikit-learn version:", sklearn.__version__)
print("Jupyter version:", jupyter.__version__)