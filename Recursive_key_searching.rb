hash= {"test"=>1,proc{}=>[[{:key=>"sss"},{"pass"=>{"a"=> [1,{:bsd => [[],[],[],[],[],[[proc{}] => {[7,1]=>{:rr=>111}}]]}] }}], [1,[:olol, {[1, {:trolo => "r"}] => 1}]]],"zero"=>7,"kuk"=>[{"tr"=>"jxp"},{:lx=>"xp"}]}

def search_key(hash,key)
	searching_node=nil
	return hash[key] if hash.is_a?(Hash)&&hash[key]
	hash.each do |e|
		res=search_key(e,key) if e.is_a?(Array) || e.is_a?(Hash)
		searching_node=res if res
	end
	searching_node
end

puts search_key(hash,:rr)

