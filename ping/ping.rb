require 'resolv'

#pingコマンド
ip_list = []


f = open("ping_report.txt","a")

ip_list.each do |host|
                unless system("ping","-c 3",host)
                        f.write(host + " bad")
                end
end


#digコマンド

vm_host = []

resolva = Resolv::DNS.new

vm_host.each do |place|
                begin
                        puts resolva.getaddress(place + ".ie.u-ryukyu.ac.jp")
                rescue
                        puts place + "は逆引きできましぇーん"
                end
end
