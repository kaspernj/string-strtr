class StringUtils
  def self.strtr(str, replace_pairs)
    keys = replace_pairs.map {|a, b| a }
    values = replace_pairs.map {|a, b| b }
    catch_regex = /(#{keys.map{|a| Regexp.quote(a) }.join( ')|(' )})/
    
    return str.to_s.gsub(catch_regex) do |match|
      values[keys.index(match)]
    end
  end
end