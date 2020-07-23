require "resolv"


Resolv::DNS.open do |dns|
  # Questo é quello che fa alla riga 396
  dns.each_address("certego.net") do |address|
    p address
  end

  # Lo sostituiamo con questo
  dns.each_resource("certego.net", Resolv::DNS::Resource::IN::A) do |result|
    p result.address
  end
end