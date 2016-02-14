do

local function callback(extra, success, result)
  vardump(success)
  vardump(result)
end

local function run(msg, matches)
  local user = our_id

  if matches[1] == "insudo" then
    user = 'user#id'..user
  end

  -- The message must come from a chat group
  if msg.to.type == 'chat' then
    local chat = 'chat#id'..msg.to.id
    chat_add_user(chat, user, callback, false)
    return nil
  else 
    return 'This is not a group'
  end

end

return {
  description = "To invite the sudo users into this group", 
  usage = {
    "!invitesudo : invites the sudo user of the bot to the group chat", 
  patterns = {
    "^[!/](invitesudo)$"
  }, 
  run = run 
}

end
