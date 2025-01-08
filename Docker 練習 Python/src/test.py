# output.txt に書き込む
file_path = "/workspace/output.txt"  # コンテナ内でのパス
with open(file_path, "w") as file:
    file.write("これはDocker内で書き込まれたテキストです。")
print("ファイルに書き込みました:", file_path)


