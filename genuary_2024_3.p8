pico-8 cartridge // http://www.pico-8.com
version 41
__lua__
-- genuary #3 2024
-- droste effect
-- by carson kompon
?"\^!5f10▒⬇️3⬅️;⌂♥"
a=32
z=0x5f54
v=0x60
w=96
h=72
g=128
r=rnd
cls(0)

function _update60()
	x=64+sin(t()/4)*a-w/2
	y=64+cos(t()/8)*a-h/2
	
	poke(z,v)
	sspr(0,0,g,g,x+2,y+2,w-4,h-4) 
	poke(z,0)
	
	for i=-3,3do
		color(6-abs(i)/3)
		rect(x+i,y+i,x+w-i,y+h-i)
	end
	circ(x+w/2,y+h/2,1,6)
	rect(x-a,y-a,x+w+a,y+h+a,2)
	
	for i=1,1299do
		local x=r(g)
		local y=r(g)
		pset(x+r(9)-5,y+r(9)-5,max(0,pget(x,y)-r(1)))
	end
end
__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700006600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000666606600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000660666600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__label__
3333jjh3jjjjhhhhjhhhhh3hjhhhhhh3hjhh3j3h3hh33jjhhhhhhhhhhhhhhhhh3hhh3hhhh3hhjhh3hhh3hjhhjhhh3hhjhhh3jhhhhjh3h3h3hh3hh33jhhh3j3hj
hh33jhhh3hhjhhjhhhhhh3h3hhjhhhhhhh3hhj3jhh3hjhhhhh3j33hhjhhhhhjhhhhh3hhhjh3hhhhhhhhjhjhhhhhh3hhhhhhhhjhhhjhjjhhh3jhhhhjhh3jhhjh3
j333hjhhhhhhhhhhhjjjjhhhhhhhhhhhhhhhhh3hhjhhhhhhhhhhjhhhhhhhhjhhhjhhhh3hh3h3jjh3hhhhhhhhhhhhhhjhhhhhhhh3hjhhhhhhhhhhhhhhhhh3hhhh
3333jhhhhjhjhhhhhhhhhhhhhhh3hjhhhhh3hhhhhhhhhhhjhhjh3jjhhhh3hhhhhh3hjhhhhhhhhhhhjjhhhjhhhhjhhhhhhhhhhjhhhhjhhhhhhhhhhhhjhhjh3jh3
33333hhhhhjhh3hhhhhhhhhhhjhhhhhhhhhhhhhhhhjhhjhhhhjhhhhhhhjhhhhhhhhhhhhhhhhhhjhjhhhhhhhhhhhhhhhhhjhjhh3jhh3hhhhhhhhjhjhhhhhhhhjh
3333jhhhhhhhhhhhhhhhhhhh3hhjhhhhhhhjhhhhhhhhhhjhhjhhjhhhhhhhhhhhhhhhhhhhhhjhjhhjhhhhhhhhhhhhhhhhhhhhhhhhhhhhhjhhhhhhh3hjhhh3jhhj
33j3hhjhhhhhhhhhhhhhhhhhjhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhjhhjhhh3hhhhjh3hhhhhhhhhhhhhhhhhhhhhhhhhhjjhhjhhhhhhhjjjhhjhh
33j3hjhhhjhhhhhhhhhh3hhhhhhhhhhhhh3hjhhhhhhhhhhhhhhhhhhh3hjhhhhhhhhhhj3hhjhhhhhhhhhhhhhhjhhhhhhhjhhhhhhhhhhhhhhhhhhhhhhhhhjhhjhh
33h3hhhhhhhjhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhjhhhhhhhjhhhhhhjhhhhhhhhhhhhhhhjhhjhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhjhhhhhh
3333hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhjhhhhhhhhhhhhhhhhhhhhjhhhhhhhhhhhhjhhhhhhhhhhhhjhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhjhhhjj3h
3h33hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhjhhhhhhhhh3jhhhhrhhhjhhhhhrhhhbh3rhhhhhhhhhhhhhhhhhhhhhhhhhhhhjhhhhhrhhhhhhhhhhhhj
3333jhhhhhhjhhhhhhhhhhhhhhhhhhhhjhhhhhhbhhhhhhhhhhhjbjhhhhhhhhhhhhhhhhhjhhhbbhrhhhh3h3hhbhbhhhhhhbhhhhhhjhhhjhhhbhhhhbhhhhhrh3hh
j3h3jhhhhhhhhhhhhhhhhhhhjhhhbhhhhhbbhhhhhhrbhhhhhhhhhhbbhhhhbhhhbhhbhhhhhhhhrhhhhhbhhhhhhhhhhhhjhhbhhbhhhhbhhhhhrhhhhhbhhhjhhhhh
j333hhhhhhhhhhhhhhhhhhhhhbhhhhhhhhhbqhhhhhhhhhhhhhbhhhhhhhhbhrhhhb3hbhhhhhbbbbbhbhhbhhbhhhhbqhhbhhjhhrhhhhbhhhhhjhhhj3jhhhhhbhhj
3333hhhhhjhhhhhhhhhhhhhhbhhbhhhhqqqqqqqqqqqqqqqqqqqqqqqqqhqqqqqqqqqqqqqqqhqqqqqqqqqqqqqqqqqqqqqqqqqqqqqhqqqqqbqqqqqqqqqqqqqqqqqq
jj33hhhhhhhhjjhhhhhhhhhhhjhhrhqqqqqqqqqqqqqqbqqbqqhqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqbqqqqqqqqqqqqqqqqqqqqhqqqqqqqqqqqqqqqq
3333hhhhhhhhhhhhhhrhhhhhhhhhqqqqqqqqqqqqbqqqqqbqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqrbqqqqqqqqqqqqqbqqqqbqqqqqqqqqqqqqqq
3333hhhhhhhhhhhhj3hrhhrbrbbqbbqqqhqnnnnnnnnnnnnnnnnnnnnnnnnnrnnnnnnnhnnnnnnnnnnnnnnnnnnbnnnnnnnnnnnnnnnnnbnnbnnnnnnnnnnnnnnnnnnn
3333hhjhhhhhhhhhrrjhbhbrb3hqbqqqqqqnqqbqqbqqqqqqqqqqqqqqqqqqqqqqqqqqbqqqqqqqqqqqqqqbqqqqqqbqqbbqqqbqqqqbqqqqqqhqqqqqqqqqqqqqqqqb
3333hhhhhh3jhhhhjbhbbjrrq3qbqqbqrqbnqqqqqqbqqqqqqqqqqqqqqbqqqqqqqqqqqqqqqqqqbqqqqqqbqqqqqbqqqqqqqqqqqqqqqqqrqqqqqqqqqqqqqqqqqqqq
3333hhhhhhhhh3hhrhr3hqbqqqqqrqqbbqqnqbqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqbqqqqrqqqqqqqqqqqqqqqqqqqqqqrqqqqqqqqqqqqqqqqqqqqqq
333jhh3hhhhhhhhhrrrqqrqbbbqbbbqqqqqnqqqq3qjqjq3qbqqrqqqjhqqqqhrqqqqjhjqqqjqjqqqqjqqqqbqqqqqqjqjqqqqqqqqqqqqqjq3jq3jqqqqqqjqqqqqq
3333hh3hhhb3rrbrbrrbbbhqqqq3qqqqqqqnqqh3qjjjh3qqqbqrrjjqqqbjbqqqqjjjjqqjjjjqqqqqqhqqqjqjqq3jq3jrj3jhqqqqhqjj33j33jjjbqqjjqbjjqqj
333hhhhhbrrhhb3bbhbbbbqqr3qqqqqqqqqnqqqjjj33qjbqqjjjjjqqbbbqbqq3jbjqqbbhjqqqqqqqqrjjjjjjh3qbqj3hhjqbqjqrrj3bj3bjhjjbhjhqqjjjjjjq
3333hhrhhrhh3rqbbbbqbrqbqbqbjqqqqqqbqqqjj33jjbhjrjjjrbqqhqbqqjbjjjqbjjjjqhrrh3jbjbbjjjb3jqqrj3rbqbjjjqjjjbbj3jjjjqbbbjhjjbjjjqbq
3333rhbhr3hbrrbrqbqqqqbqqbqbqbqqqqqnqqqbjhjhhbhjhbjbqbjrjbqqjbbjhbbrbjq3hbh33jhbbjjbjbbqqjrr3hhjjjjbqbjjbjhbrhjjb3jhbjhjjjbjqqqq
3333rhhrhqbhjbbbqrbbrbbbrbqqbqqbqqqbqqqjhjhjjhrbrhqhjjbqbrjbjjhbb3rjq3hjqbbjqbjbjbbjhhbjbbbhrjjbbjbqj3qjjhbjjbb3rhrjjjhhj3bqqbjq
333jrhjhrbrhhrbbrbqqrqqbbqbqqqqqqqqnqqqbjjjjhjjbbh3jrbbjhrhqqqqqqqqqqqqqqqqqqqqqqqqqbqqqqqqqqqqqqqqqqhqqqqqqqbqqqqhqqqqqqqqbqqqq
j333hbjhh3h3rhbrbhr3bbbrqqqqqqqqqqqhqqqhhjr3hhjq3hjbrbrbqbbqqrqqqbhbqqqqrqqqqqqqqqqbqqqqqqbqqqqqqqqqqqqbqqqqqqqqqqqqqqhqqqbqqbqq
333hjr3rrbrqhb3rrrh3bqqqqbbbqqqqqqqnqqqjhh3j3qqhjbbbjrb3brqqqnqqqqqqqqqqqqqqbqqqqqqqbbqbbqqqqqqqqqqqqqqqqqqqqbqqqqbqqbqqqqqqqrqq
3333bhbhhqrbrqbrrrrbqqqbbqbqbqqbqqqnqqqjh333jjhbrrrqqqbbbbbqqnqqqqqjqqqqqqqqrqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq
3333hbbhjqjhq3jq3bb33qqbqrqqqrqqqqqnqqq33hjrrbb3bbbbbqb3qqqqqnqqqjj33jbqjjjjqjbqhq3jjqqbqqqqqqqrqjjjqbbb3qjqbqqrj3b3bjjjbjqqjjjj
3333bjrrhbrbrbqq3q3rbrbb3bqb3bqqqqqnqqqhrbr33brbrbrqqbqbbqbqqnqqqb3jjbqjbjqbqjqqjbjjbjjq3rq3jqjjhj33qjr3bjjjbqjjjbbbjj3jbjbjjjqq
3333qjqbbb3bbhbrqrbq3brqbrqqqbqqqqqnqqqrbjhbrjqbbbqrqqbqqqqqqbqqbbjjjjjbj3bbhqrjjjrrhjqqbbqqqj3jbqjbbbbjjbbqqbj3bjjjrrrjjjjhbbbb
3333j3bqb3bbbrbrbrrbrbbqqrqqqqqqqqbnqbqb33rbrqb3rrqbqqqbbqqqqnqqjjj3jqqjbb3bbbbqq3qqjqqqqqqqqqqqqqbqqqqqhqqqqqbqjqqqqqqqqqqqqqqq
3j33rj3hr3rrrrbrrr3bbbrqbqbrqqqqqqqnbqqq3bhqjb3jqbbrqqqrqqrqqnqqb33jj3brbqqrbrbrnqqqqbqqb3rqbqqqqbqqqqqrqqqrq3qqqqhqqbbqbqrbqbqb
j333rjqbrbq3qrrrqrbrq3qqrqbqqqqqqqqnqqqjbrrbrbbqqq3brbqbq3rqqnqq3hrrrb33bbbb3qqqnqqj33jrjjjqjqq3jqqbqqqqqqjj33b3jqqqrjb3rbjjjjjj
3333r3jq3j3bq3bb3brrqbbqqbb3bqqqqqqnqqq33bq3bbrbrbrbbbqrqqqqqbqqbrbbrqbbqqqbqqqqnqj3jjjbjqrbrjjrrjbqqqqjbbqrbbbjbqjj3b3jr3jjrbbb
33333bjbrhrr33jrbbqbbrbrbqqqqqqqqqqhqqq3rqbbb3brrrbq3brqqqqqqnqqqbbqj3jqbrqqqqrqbq33jjrrrqrbqbqqqbqqqqqbqqqqqqbqhqqqqqbqbqqrbqqq
33333hhqjrqrqrqqbbbrbqbrbrqqbqbqqqqnqqqr3jbqrr3rrbqjrbbbqqqrqnqq3333brbrrbbqrbqqnqbj3rqbqqbqqqqjjjjbbbrjbbjqqqjjqrbjjbhjjjjbjrbb
33hjh33bq3r3brbrqbrbqbqbqrb3qqqqqqqnqqqbj3b3r3rjrbrqbqqq3qqrqnqqr3b3r3brjbbbqqqqnj33qbrrrbqrqbqrrqbrbrqrqjjqqq3bj3qjjjqjbjjjqbqj
3j33hhrrqh3qbbbbr3br3bbbqbqjbbbbqqqnqqqrrr3r3bbqbj3qq3rqbrbqqnqqrr3rrbqrqqbrqrbqrqrrrrbjqbr3bbqrrbqbbqbqq3rqjq3bqrqqbbjrjjqjbbqq
j333r3r3jr3brbqbbj3bqqbqrqqbrrqqqqqnbqq3rbr3rrqbrbbbrbbrqrqqqnjj3rrrbrrrqrqrqqqqnqr3jr3brqrqbbqjhb3jbqqqqbbqbqbr3qqjnbbq3rbrrjbb
33j3b3rbrrrq33bbqrrbbbqbqr3qbbqqqqqnqqq3rjrrr3rrrqrrrqbqqbqbbnqqr3r3r33brbq3qrbqnqjbjb3qj3bqbqqbhrbqrbrqrbbqbqrb333r3r3jr3jb3jbb
3333rrbrh3rrbqbrbbbrbrbrbrrqbqqqqqqnqqqbr3b333bb33brjqbbqbqbqrqqbrrrrrbb3bbqbqqqnqjrbrrb3rbbqqb3jrrqqbrbq333qjbbqqqr3bqb3r3bjqrr
3333rjhhrjhh3r3brqqbqrbqqbbqqqqqqqqnqqqr3br3rb33bb3bbq3qrqbqqnqqjb3rb33qjq3bqbbrnqrbb3rjbbqb3b3bq33bqqqqqn333333qb33j3333bjb333b
3r33rqhrjrh3q3rrbqqrbrqqbqjqqqqbqqqnqqh3b3rbrrrbrbrbrbqbqqqqqnqqjr3brrbb3brbbbbqqqrjbrbbqqqbrqqrqrbqbbbbbqbrrbrrqrrbqbjbjrjqrbrj
3333rr3br3jb3bb3b3bbrjqbbbrqbqbqbqqnqqqqjj33rbrbr3bb3bqbqqbqqnqqrb3rj3bbqrqqbbbhnb33rbrqbbbbrqqbnjrjb3rrr33jjrjjrr3j33r3qrrjj3qj
3333rb3rh3rb3rqqrrqbbrqrb3qqrqqqqqqnqqqbjq3jbbrrqjjrbrbqrbqqqnqqrb3brrbbbqbbbqqqnqbrbrbqb3qrbqqqnqrqq3q3qrqqqq3bqq3qqq3qqqqqqqbq
j3333rbr33rbr33bbb3qbbqb3qqrqbbqqqqnqqqbj3jbj33bq3bqbqrbqqqqbnqq33rjjbq3rqrbbrqbnqqrqbqbbqqbbhqqqbbqq3q3qbqqrqqqqq3rb3jqqqbb3q3b
r3333b3jrq3jb3bbq3b3qqrqqbqqqqqqqqqnqqqjrbbbr3rbbb3brrbbqbbqqnqqrjrbrbbbq3bqbqqbnq3rjbbr33bbrrbrbbb3rrq3rrjbj3bbj3r3bbqqbbhbrrjb
3j33bj3r3jrr3rbrqr3jbrbqqbqqqqqbqqqnqqq333bbbrbqrrbqrrqbqbqqqnqqj3jbrqrj3brbqqqqnqjrbbb3jrb3rrrr3b3r3bj33r33brjrrjj3r3j3jrjb3jrq
33333bbbjhrh3bbqbrjbbbrr3qbqqqbqqqqnqqqrbb3rrbq3bqqqq3qbbbqqbn3q33rrbrrqbbqbbqqqnqqnrrbjr3j3rjr3jq3j3r3jjbjrbrj3rbbrrjrbbrjjqqbb
3333j3j3r3rbbrhr33brbbbrqbrqqbqqqqqnqqqbbr3jbbrbbqbqrbbqbqqqqnqqqb3jq3bqrrqqqqrqnqnbnr3hb3rjr3jbjjj333bqqr33j3rrrj3rrrjbjjrbjbbq
333rhrh3hrqqrbbj3rr3jbrqqbqbqqqqqqqnqqqrbj3bbqrbrqbqqbqbbqqqbnqqr3rrbbbqbrrqrbbqnqqnqqqqqbbqqbqqqhqqqqqjqqqqqqqqqqqqbqqqqjbqqqqq
3j33h3q33jhbqrhqqjjrqb3qbqbbbbqqqqqnqqqbr3b3br3rbrr33bqqbqqqqnqqbjj33rq3bqrrqqqqqqhqqqqqbqqqqqqqqqqbqbqqbqqqqbqjqqqqqqqqqqbqqqqq
3333r3rbrr33rbrjb3brbrqqbrqqqbbqqqqnqqq33rrbjjbq3brqbrbbqrqqqnqbj3rqrqqbbrqqbqbqbqqqbbbqqqqqhrqbbqbqqqqqqqqqbqq3brjqbrbbjqbbqqbr
3333jbrjrbj3r3brb3bqqbqbrbqqqqrqqqqnqqqbjr3b3rqrbrr3qqrrrqqqqnhqbrjrqbbbbqbqrbrbjhq3q3rqbrqqbbbbqqq3b3qbrbbrrrqbrqrbbrbqqb3r3bbq
3333hrhb3rqb3rrqbbrbqbqbqqqqqqqqqqqnqqqrj3rbrbrbbb3qrqqrbqqbqnq33rrrbbbr3b3bbbrrbr3brbbjbrrbq3rhqjbbqbbbb3bbrq3bbqbqbbbrqbr3rjb3
3j33r3bhbbr3hrbbrb3bbrrqbbqqbbbqqqqnqqq3qbjrrrbq3bbbqqrqbqqqqnqqr3rrjrrr33br3qrb33jq33brj33rrrjrbjjr33brqbrr3j33qbbjjrrqbqj33jjq
3j33j33r33rjrbbqbbr3brqqbbqbbqqrqqqnqqqj3bjbrbqrjr3bbqbqqqqqqnq3jrbbbb333jrb3jjr3r33rb3rrhbj333brjj3brjq3brjjj3r3jjjqj3jjb3jbrqq
33333bhbjbb33b3rbrbbqrrbqr3qbqbqqqqnqqq3bbbr3bqrj3qrbrbqbqqqqnqqr3rbb3b3jbjj3rj3rjjrrrq3jqj333r33rrrbjjr3jr3jj3j3rr3jhjj3jj3jq3q
33h3r3br3rjrjrrrj3bqbqbqbqbqqqqqqqqnqqq33brrb33r3bbbbqrbqqqqqnqqqrbrrbbjrrrj33rjrr3jjh3jjbr33jj3jjrr3r3j3br3brrrqb3jjrr3jjjjqjbq
3333b3b3brjrqhhbrqqbqq3qqbbbbbqqqqqnqqqqbb3jqq3h33rrqqbbqqrqqbqqr3brr33jb33rjj33rjbjrr33j33b3jqbr333jbjjrrrj33rr3rjbrjjrbbjqbbqq
3333bjh3jjbbrhbbrqb3qqrbbqqbqqqqqqqrqqqbbjjjbbr3rqb3qbbqqqqqqnbq33r33bj33b3bj33j3jj333j3bj33bj33jj33b3333jj333r33b33j3333j3333b3
j333rbjrjrhrrrqqqrrqqqbq3bqbqbbqqqbnqqqb3qrrbrbbqrbqj3qrqbbqqnqqqqqqqqqqqqqqqrqqqjqqqqqqqqqbbqq3bqqqqqqqqqbqqqqqqqqqqqqbqbqqqqqq
3333brj3bbhqbrbrrqbrqbbqqbbbqqqqbqqnqqqrrjrbbbrbrrrqqrbqbqqqqnqqqbqqbbqq3qqqbqqqqqqbjbqqqqqqqqqbqqqqqbbbrqqqqbqqqqqqqqqqqqqqqqqq
3h33jjqrq33bqrbqbb3bjbqbqbqqrqbqqbqnbqqbj3333qrqrbbqbbrqbqqqbqqqqqqqqqqqqqqqqqqqqqqqqrqqqqqqqqqqjqqqqqqqqqqbqqqqqqqbqqqqqrqqqqqq
3333r3hb3qbrr3rbrrrrr3brqqqbqqqqqqqnqqq33q3qqrr3rqbrbbqqqrqqqqqqbbqqqqqqbqqqqqqqqqrqqqqqqqqqqqqqjqqqqqrqqrrqqqqqqqbbbqqqqbqqqqqq
3333jqj3brbrhhqbbbqbqbrbbqbbbbqqqbbnqqqqrrrqbqqqbrbrqqqbqqbqqqqqbbqbb3rqqqqqqbqqqqbbqqbrbqqqqqqqqqqqbqbqbqbqjqqqb3bbqjqbqbqqbbrb
33333brrbhj3bbq3bbrbqbrbbbqbbqqqqqqnqqqrbbrqrrbbqbr3qbbbqqrqbjqbqbb33bbqbrbq3qqqqbqqbqbqqqrrqbqbqrqq3r3qbbbqbq3qbjqbqqqbrqbqqqqq
3333jjrqqrjbbrbbjhrbqqqrqbqbqbqqqqqnqqqbrr3rrrbbbqbqbbbqbbrbbrbqq3qq3rbqbqrqq33bbqbqqqq3qbbbbb3qbbbrrr3qbqqqrbbbbrrqbqb3rr3qqbqj
j333jrh3hhjrbqrbbhrb3qqbrrqrqqqqqqqnqqqbhb3r3bjbbbjq3qqbbbbrj33bqrbrrrbqrrq3bqj3rrr33q3bbbqbbqbqbbqbjqbrrrqbqbr3rjqbb3qjbqbbbrbq
3333jh3rr3rhrbqrrrbbqqrbqbrqbqbbqqqnqqq3hqrjrrbbr33bq3bbjbrrrbbbrjbrb33rbjrbb333rrbq3jbbrqbqqhqq3qb3rqrrbbbqqrqbbjbr3qbr3brbbbq3
j333hbhr3rjbrrjbrqqhbqqbqrqbqqqqqqqnqqqrbrr3qjjq333r33bq3bb3rjq3bjrrqbqrr33bbbrr3rqrr3qrqjrbjrbrbr3bqrbbb3bhrqhqbbbrqqrbr3jjb33q
333333rrrb3rbbqrbqbb3bbrqbqqqqbbqbqnqqqb3rrrrrr3rj33jbj3jq3j3333bqbh3qb3j3r3rbrrjhjbqjrbjrrrjjqbbrq33rb333qbbqjjrbrjqjrr3j3b3qqq
j333q33jjrr3bbq3rbb3bqq3bqbbqqqqqqqnqqqrrrb33rb3brrr3b3333bqrjb3bqbr3r33jj3brb3rqrb3bjjb33hbjhr3r3h3jbjbb3b3bjjrrqqrbqjj333jjqqq
rhr3rj3rbj33b3rrrqqqqbbqbrbqqbqqqqqnqqqjr33b3j3b3r3j3r333jj3r3rbr33rb3rjr33bjjr3r3brb3333bhrjrhjbrrbjjbb3h3jjrrhhjjbjhhhhjjjqqqq
33h33hbjhbrh3qrjrr3jbbqbbqqqqqqqqqqnqbqr3rrbbb3bh333bjjj3rrr3rb3j3jbrqjj33qj3333brr3jjrbhbrjjr3bj3j3jj33jhjrrhqjj3j3jb33jbjrqqqq
3333hjbhrrrbbqrbjhqrrhrjbqbrqqqqqqqnq3qrbbjrhrr3rjq3jbr3rrr33jrrrrr3jj3rq3jrrr3rr33jbjjjbjjj3rjjr3jjjr3jjrrr33jrjjjj3jjhjjqq3hjq
33333rrjb3jjbbhqqjqjbhrqqbrqqqqqqqqnqqqqbrr3rjbrjrrrb33j333rjr333j3jq3rjj3bhrr33h33bjjrjjr33rjj3j33hbhrrrrhhrrr3jjrhjbjjqqqbjjqq
3j333qbr3rb3bbrqqbbbbbqrbbbqqqbqqqqnqqqjrrrr3brb333jrr333rrjr333jrrj33jj3bb3j3bj33jjjrjh3rr3j33rrj3jr3rrqqhhjjj3hrhjhjhbjhjjbqqq
33j3qr3rbrrbbrjrqqqqb3bbbqqrqqqbbqqnbqqrb3b3rj3b3jb3r3rjrjr33hjjbjjbr33j3j3j3b33hjjbrhjr3j3j3jhrjr33333hjrrhrbr3jjrjqhqbjbjqjqqb
j333bqb3bjqqr3b3b3rbrqqbhbbqqrqqqbqnqqq3rjrrj3bjj333rr33rj33bj3bj3rrjjjjjj3jrjjqb3j3b3jjjjjhjjjrr3jb3jrhrjhjrbrbjjjjbjjjjjhjqqjq
3j33brjrbq3rrqbbrrbb3qqbbbbqqqqqqqqnqqqh33333333333j33jh333333j333j33j33333333jj3333jj3b3333hr33jj33h33j3333333j33r3j3j333jr3333
3333brjj3jbbbrrr3qbr3qbqbqbqqbbqqqqnqqqj3jj33jjj3j3333j333j3j3333bj3jj3j3jjb33jj3333j3333jj3jj3333j3j3jj33j3jqq3h333333333333jj3
3j33bbb3qhrrbrqjrq3rbrqrqqrbbqqqqqqnqqqqqqqqqqqqqqqqqqqqqhqqqrqqqbqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqjqqqqqqq
j3333rqrbrjrrbbqrrbbqj3qqrqqbbbqqqqnqqqqqqqqqqqqqqqqqqqqqqqjqqqqqqqqbqqqqqqqqqqqqqqqqqqbqqqqqqqbqqqqqqqjqqqqqqqqqjqqqqqqqqqqqqqq
j333rrb3brb3bbbrrb3qqqrbbr3rqqqqqqqnqqbqqqqqqqqqqqqqqqqqqqbqqqqqqqqbqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqbqbqqqqqqqqqqqqqqqqqqq
3333rjbrrbbb3rbrbrrqqqrbbqbbqqqqqqqnnnnnnnnnnnnnnnnnnnnnbnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnbnnnnnnnnnnnnnnnnnnnnnnnnnnnn
333333rrjbr3hhrrjrqrbqrbbqqqqbqrqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqbbqqqqqqqqqqqrrqqqqbqbqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq
r333j333r33qrrrr3bbrqbbbrqbbqqqqqqqqqqqqqqqqqqqqqqqqqqqqbqqqqqqqqqqqqqbqqqqqqbqqqqqqbqqqqqqqbqqqqqqqqqqbqqqqqqqqqqqqqqqqqqqqrqqq
3333jqbrrbqbbbqbbqqrbqbqbbqb3qqqqqqqqqqqqqqqqqqbqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq3qqqqqqqqqqqqqqqqqqqqqqqqqqbbqqrqqqqqqqqq
3j33bhq3bqqrbrqrbqbqrbbrqqbqrqqqqqqqqrqbqqqqqqqqqbbqqqqqq3qqqqqqqqqqqqqqqqqqqqqqqqqqqqrqqqqrqqqbqqqqqqqqqqqbqbqqqbq3qqqqqqqqqqqq
jj33rbrjjrbjbbqrrbbbrqbqrrqhbqqqbbqqqqqbbqqqqqqqbqqqbbbqqqqqqqqbbqrqq3qbbqqqqbqbrqqbqqqqqqbr3qqq3qqqqqbqqqqqbqrrqqqqqbqqqqqrqqqb
r333jrrrhqbq3qqbrrbrrqqbqbqqqbqqqbqqqbbqqqbbrbbqqqqqqqqqbqrqqqbbbbqqbrqbbqqqbqqqbqqqqqqqrqbbqbbqbqqjhbqqqb3bqbqj3qbqqhhbhbqbrbqq
3333bqbr3qrrjbbqbbrbbqbbbbrqqrbqbqjqqqqbrb33qb3qbbrqbqbqbqrqqbbqqqbqbbqqrqrrqqbqqbqbrqqb3rrbqbbb3qqqqq3qrbjqbbqhbqbqrqb3qqqqqqqq
3333b33rhbj3qrqqbq3rbrrbbjrbrbbq3qqbbbbqqqbbjrbqbqqqbrbbbqjqq3qqqbqbqb3qrrqbbqqb3bbqb3bbqrhqbrhrqbbbb33qqrrhrbqbqbhqqqqqhhbhhbqj
3333r3r33rqrqbbbbqbrqbbbhqqbbhrbbqrbhrq3bqq3qrrqqbqqrqqqh3bbbqqbqbqqqb3qqrbbbq33bqbrbbr3rrbrqbrqqjqrrqbbqrrrrqhqbb3qrr3bqhqbqjbb
j333qrrrbqhrrrb3b3r3rr3rbrjqbqqrqjqjbqbqqqqbqrqq3bbrbqbrrrq3rjbq3qbqrbqj3bqrj3bbhbhqqjqbqqqbbjbbqqbrrqh3hrqbqq3rbrqqh3qbbhhhbh3h
r333rrb3bj3brj3brbjbq3qrqb3qbbbrhqrhb3qrrbrrqrbqqrrbq3bjqjq3rrrr3b3qhqbbbbqbqhqbqqbbbqbqjqbrrrrqhbbqbjh33hjq3bb3hqjhbqbjhh3rbhhh
3r33r3brrrqjrq33r3rrrr3jrr3bqbbjbr3jqbbbqbbrqqbrbrbhrqq33qqhjb3bbrrbbbbbbjqrr3rbbj3rrqbbbrbbh3qrbqjrhbhrbrbh3bhhbbqhqhbrhjhhhhjh
j333jbqrbjbrrhbrq33bbq3qbbrjbh3rr3bbbrr3rbrbb33rrbqhrhbb3hr3rr3bqr3jh3brrqbqqhjh3q3qhh3qrqqrrbjbbrqqr3qbrbjrbr3hbbrrhhhhhhhhh33h
33h33rjr333jbj3h33qrhbbb3q3hqbrjhbbhqh3rrbj3rbrb3hbhrh33rbrbhb3bqrrbrbhrbrhrb3hrbr3hqbqr3b3bbbhh3qbrbhqhhhhrhqhrrhhhhhrhhjhhhhhh
3333bqrrbrqj3jq33h3rr33bbq33bbq3rj3j33bjbrrqhbqrhrhh3hrqbrhr3rbhrbr3qb3hqjrb33rbbrbjr3bbhhbbhhq3brhrq3hqbbhbhrhqhhhhr3jhhhhhhhh3
3333brrjbjbjbbbqrrb3jrrjj33bqrb3r33rhrrr3jr3bqjhbjqjrbb3bbrjbjhbj3bqqhrbhjhj3j3hjrbrr3j3hhrrbrbqhr3rhh3qrhhhhhhhhbhhrhhhhhhhhjhh
33333hrrj3rrrrhrhhh33jbjhhqjqhrj33333rbqjb33bhb3rjjhh3rjbrjrjhrrbjqjhhhjhhrhrj3qhbbrrqhb3rrhhhr3qbbbqhhjhrhhqhhhhhhhhhhhhhhhhhjh
3333jj3rqrjbr33rbrbhjh33qbhrqbrrjrjj3hbjrhh3rhrjbrhrhhjhqjbrhhhhrjqjbhjhj3hrhrrr3hhhr3jbbhjhrhhhhhhhh3hbqhhbhhhhhh3hhhhhhhhhhhjh
3333h3rbr3hrhb3brrrrr3b3hhr33br3rbjb3hbqbbr3rr33jhjh3brhb33rqrbh3hbhhjbhhhhbrbrrr3rhhh3rrh3jbbh3hh3bjbbrhrhhhhhhhhhhhhhhhhhhhh33
33333rbb3rrjjbr3hbrjjrhrrhbhhhqhhrbj3jrhrhr3hhjr3r3bbhjrhrh3br33hhhhjq3jh3hhh3brr3h3jhh3hhhrhhhhhqhhhbj33hhhhhhhhhhhhhhhh3hhhjjh
333jrr33rb3hrhh3jr33j3h3b3rhjjb3rjrrrbr333jbrhrhh3hh3bjhjhj3rhhbrh33jq3hhhhr3jrh3jbbrhhhhhhhhhbhr3jjr3hhrhhhhhhhhhhhhhjhjhhhhh3j
33333brrjhbbr3bhrhjhhjjhjhrhrrhr33hhh3jhhjhrjqjhhhhhqh33hh33h3rh33hhrjhrhbhjj3r3hhjhrh3hhhhh3hhhhhrhhjhhhhhhhhhhhhhhhhhhhhhhhhhh
3333hhrjhrj333hhbr3h3bjjhhhr3j3333hb33hjrrr3bhhhrhhhhrjh3rhbbqjjhjrhhhjjb3hhbr3hhhh3bhqrhhhhhrrjhh33hhhhhhhhhhhhhhhhhhhhjhhhhhhh
3333brbrjrhrrr3rrjqj3jbbr3hhhhhh3hjhrhhrbh3h3hhrhh3rjrrhrhhhhhjhhhbjjhhh3hjhb3rjhjhhhjhhjrhhhhhhhhhhhhhrhhhhhhhhhhhhhhhhhhhhjhj3
3333h3hh3hj3hhhhhr3brh3jhhh3hh33hhh3jhhrjhbhrhqjhrbhq3hjhrqhrhrrjhjrhh33hhj3hh3hjrhhjrhh33hhhhhhhhhhhh3hhhhhhhhhhhhhhhhhhjhhhhhh
3j33hhhh3hrjrhhjhrrjrhh3hhh3hhjrjhhr333jb3jqr3hhhjh3bhhhh3qhhhh3hhjjhhhhjhhhjhhh3hhr33hhbrhhrhhhhhhhrhhhhhhrhhhhhhhhhhhhhhhhhh3j
3333hjjhhjhhhh3jjhj3hjhhhhjrjhbhj3jhjhhhbjjh3h3hjhhhh3hhrjhhhjjhhhjh3hhrhhh3jjhh3hhjhjhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhjhhhjhhhjjh
3333rhjh3h3j3rbhh33hjrrhhhhhhhhhhh3hhhhh3rjhhhhhh3bhbhjh3b3hhhrhh3hhjhhh3hhhrhhhhhrhjhjhh3hhjhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhjh
3333hhhhjjqrhhh333rjhhhhrhjjrhhhhhhhhhhhhjh3hj3h3rhjj3hh3jhhbhhhhjrjhhjrjhjjhrhhhhhhhhh3hjhhhhhh3h3jhhhjhj3hhhhhhh3hjhhhhhhhhhh3
3333hj3bj3rjr3hhjjbj3h3hrjhhhhjh3hhhhhbjhhjjh3hjh3j33hhhhhhhhhhjhjh3jjhhjj3jhhjhhhhhrhhhhhhhjhhhhhhhhhhhhhhhhhhhhhhhjhhhhhhhhhhh
3333jjhhh3rhjjjhjhjjhbhhjbhhhj3jhhjh3hh3hjjhhh3hrjrjrhhhhjhjqrhjhjjj3hhhrhh3hh3hjhhhh3hhhhjhjhhjhhhhhhjjhhhhhhhjhhjhhhhhhhhhhjjh
333333j333333j33j33j3333333333333333333333333j3j33333333333j33h33333j3333333j33h333h333333333333333333333333h33333j3333333333333
333j3j333333h33333j333h33j333h33jhj3j3333333333333333333333333h333h33333j33j33333h33j3h33333333jh3333h33333hh33j333333h3jh333333
3j3j33333h3333333333j333h3h333j3h33j333j3j333j33333j33333j3j3jj33hjj3333h33333h3jhjjj33jj333h333333h333h333h33h33j3h33h3h3333333
3j33jj3h33333j3j3j33333j3h33j3jh3333r33h3hh33333j33jjh3hjj3h3333hj333j3333h3h3333j3333333h3333333j33333h33j3333333333h3hj3hjh3h3
33jjh3jj33hj3j333j3j333hh3333j33j3333h333j3jjj3jhhj3j3333h3j33h333j333h33jj3jjj3j3jh3j33j3jjj333jj3j3j333h33jh333333333j333jj333
r33hj3333333333j3j33h333333jj3j3hj333hj3hh33jj3hjjj33h3j3jjjjhh3jjj333hj33333hhh3j3h3jh33h3j3333j33j33jjh3333jj3hhhhhj333j333j33
j33333j3jh3jjj3j33j3333jrjj3h33jj33jhj33j333333hj33333j3333333j333333j333h33jj333333jj3333jjjh3hjjj33j333h3j33jjhhjjjh3h3jjjh333

__sfx__
d30100000061000300003000030000300003000030000300003000030000300003000030000300003000030000300003000030000300003000030000300003000030000300003000030000300003000030000300
010100002451000300003000030000300003000030000300003000030000300003000030000300003000030000300003000030000300003000030000300003000030000300003000030000300003000030000300
