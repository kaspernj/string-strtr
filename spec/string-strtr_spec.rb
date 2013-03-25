require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "StringUtils" do
  it "strtr" do
    str = "\\\" \\ \" \\\\\""
    res = str.strtr(
      "\\\\" => "\\",
      "\\\"" => "\""
    )
    res.should eql("\" \\ \" \\\"")
  end
end
