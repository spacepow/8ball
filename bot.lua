local discordia = require("discordia")
local client = discordia.Client()

client:on("messageCreate", function(message)
    local content = message.content
    local member = message.member
    local id = member.id
    if content:lower() == "-" then
        local statements ={
            "As I see it, yes",
"Ask again later",
"Better not tell you now",
"Cannot predict now",
"Concentrate and ask again",
"Don’t count on it",
"It is certain",
"It is decidedly so",
"Most likely",
"My reply is no",
"My sources say no",
"Outlook not so good",
"Outlook good",
"Reply hazy, try again",
"Signs point to yes",
"Very doubtful",
"Without a doubt",
"Yes",
"Yes – definitely",
"You may rely on it"}
message:reply(statements[math.random(1, #statements)])
        end
    end)

client:run("Bot replace_with_bot_token_:)")

