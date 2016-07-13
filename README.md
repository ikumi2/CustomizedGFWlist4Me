

An online self-customized PAC file formatting GFW list supporting Shadowsocks.
===

*This is a project that use [gfwlist2pac]](https://pypi.python.org/pypi/gfwlist2pac/1.1.3) (which is a tool that bases on python to transform a gfwlist to a Shadowsocks based-on pac file.)*


<hr />

The file tree structure looks like this:
* generate.sh || A script to generate latest pac and push it to Github.
* gfwlist.txt || A file that maintanced by someone else that collect the websites and ips which are blocked by the GFW.
* proxy.pac || The last result that the program generates and we need. Just copy the direct link of this file and put it into Shadowsocks' Pac address or SwitchyOmega config and the route table will work well for you, group blocked websites and non-blocked ones separatedly.
* user-rule.txt || A file that can be Customized by your personal requirements using the expressions from here: [filter-cheatsheet](https://adblockplus.org/en/filter-cheatsheet). You can add blocked websites into it to generate a pac for yourself as well. Commit to this project is also welcome!

