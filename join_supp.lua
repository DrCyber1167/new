local function run(msg, matches)
    if matches[1] == "support" then
 local user = "user#id"..msg.from.id
 local chat = "chat#id"..YourGroupid
 
 -- for example my group id is = 22133222 i will put it like this : 
 --  local chat = "chat#id"..22133222 by @Pro_programing
 chat_add_user(chat, user, ok_cb, false)
    end
return {
  patterns = {
    "^[!/]([Ss]upport)$",
  },
  run = run
}
