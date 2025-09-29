FileSys = {} -- FileSys by WAGURI_DEV

function FileSys:readFile(path)
  if type(path) ~= "string" then
    print("path is not a string")
    return
  end
  local file, error = io.open(path, "rb")
  if file then
    local content = file:read("*a")
    if content then
      print("File sucessfully opened and read")
      file:close()
      return content
    end
  else
    print("Fail to open file, content could not be read")
  end
end

function FileSys:writeFile(path, content)
  if type(path) ~= "string" then
    print("path is not a string")
    return
  end
  if type(content) ~= "string" then
    print("content is not is a string")
    return
  end
  local file, error = io.open(path, "w+")
  if file then
    file:write(content)
    file:close()
    print("content written to file succesfully")
  else
    print("content could not be written to file")
  end
end

return FileSys
