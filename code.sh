rm -rf {fileProjectPath}/bin
javac {fileDirPath}/*.java -d {fileProjectPath}/bin
orig="{filePath}"
result=$(echo $orig | sed "s/\//./g")
result=$(echo $result | sed "s/src\.//g")
result=$(echo $result | sed "s/\.java//g")
java -cp {fileProjectPath}/bin $result
