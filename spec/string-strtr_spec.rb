require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "StringUtils" do
  it "strtr" do
    str = "\\\" \\ \" \\\\\""
    res = StringUtils.strtr(str, {
      "\\\\" => "\\",
      "\\\"" => "\""
    })
    res.should eql("\" \\ \" \\\"")
  end
end
