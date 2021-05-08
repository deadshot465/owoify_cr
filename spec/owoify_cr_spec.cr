require "./spec_helper"

SOURCE = "Hello, World! This is the string to owo! Kinda cute, isn't it?"

describe Owoify do
  it "should owoify the source string" do
    result = Owoify.owoify(SOURCE)
    result.should_not eq(SOURCE)
  end

  it "should owoify the source string with level of owo" do
    result = Owoify.owoify(SOURCE)
    result.should_not eq("")
  end

  it "should owoify the source string with level of uwu" do
    result = Owoify.owoify(SOURCE, "uwu")
    result.should_not eq("")
  end

  it "should owoify the source string with level of uvu" do
    result = Owoify.owoify(SOURCE, "uvu")
    result.should_not eq("")
  end

  it "should give different result when levels are owo and uwu" do
    Owoify.owoify(SOURCE).should_not eq(Owoify.owoify(SOURCE, "uwu"))
  end

  it "should give different result when levels are owo and uvu" do
    Owoify.owoify(SOURCE).should_not eq(Owoify.owoify(SOURCE, "uvu"))
  end

  it "should give different result when levels are uwu and uvu" do
    Owoify.owoify(SOURCE, "uwu").should_not eq(Owoify.owoify(SOURCE, "uvu"))
  end

  expect_raises(Exception, "not supported") do
    Owoify.owoify(SOURCE, "123")
  end
end
