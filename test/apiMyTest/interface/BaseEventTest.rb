require 'openssl'


module EventTestInterface

    #@return {Hash}
    def requestHeader
        {"x-line-signature" =>  "test_signature", "Content-Type" => "application/json"} #test環境では、受信側で署名確認をしないのでvalueはなんでもいい
    end

    #@param events {Hash} 
    #@return {Hash}
    def requestBody (events = nil)
        {destination: "test_dest", events: events}
    end


    def execute 
        raise NotImplementedError.new("#{self.class}##{__method__} が実装されていません")
    end

end

