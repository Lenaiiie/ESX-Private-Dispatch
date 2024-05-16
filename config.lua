
-- ESX ONLY

Config = {}

Config.dispatchJobs = {
    {
        name = "Police Dispatch", -- Text displayed before user name
        commands = { -- Commands that can be used to send dispatch messages
            "policedispatch",
            "pod"
        },
        authorizedJobs = { -- Admin name of the jobs that can use the commands and see the messages
            "police",
        },
        prefixColor = "^4", -- Color of the prefix (job name and user name)
        chatColor = "^7", -- Color of the chat messages
    },
    {
        name = "EMS Dispatch", -- Text displayed before user name
        commands = {
            "ambulancedispatch",
            "amd"
        },
        authorizedJobs = { -- Admin name of the jobs that can use the commands and see the messages
        "ambulance",
        },
        prefixColor = "^2",
        chatColor = "^7",
    }
}

-- ^1 = Red Orange
-- ^2 = Light Green
-- ^3 = Light Yellow
-- ^4 = Dark Blue
-- ^5 = Light Blue
-- ^6 = Purple
-- ^7 = White
-- ^8 = Blood Red
-- ^9 = Fuscia


-- https://forum.cfx.re/t/chat-formatting-colors-bold-underline/67641