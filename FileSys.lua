FileSys = {}

function FileSys:readFile(path)
  local file, error = io.open(path, "rb")
  if file then
    local content = file:read("*a")
    if content then
      print("File sucessfully opened and read")
      return content
    end
  else
    print("Fail to open file, content could not be read")
  end
end
