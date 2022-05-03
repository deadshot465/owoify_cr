require "./spec_helper"

SOURCE                 = "Hello, World! This is the string to owo! Kinda cute, isn't it?"
POKEMON_NAME_LIST_PATH = "assets/pokemons.txt"
WAR_AND_PEACE_PATH     = "assets/war_and_peace_chapter01-20.txt"

describe Owoify do
  it "should owoify the source string" do
    result = Owoify.owoify(SOURCE)
    result.should_not eq(SOURCE)
  end

  it "should owoify the source string with level of owo" do
    result = Owoify.owoify(SOURCE)
    result.should_not eq("")
    result.should_not eq(nil)
  end

  it "should owoify the source string with level of uwu" do
    result = Owoify.owoify(SOURCE, :uwu)
    result.should_not eq("")
    result.should_not eq(nil)
  end

  it "should owoify the source string with level of uvu" do
    result = Owoify.owoify(SOURCE, :uvu)
    result.should_not eq("")
    result.should_not eq(nil)
  end

  it "should give different result when levels are owo and uwu" do
    Owoify.owoify(SOURCE).should_not eq(Owoify.owoify(SOURCE, :uwu))
  end

  it "should give different result when levels are owo and uvu" do
    Owoify.owoify(SOURCE).should_not eq(Owoify.owoify(SOURCE, :uvu))
  end

  it "should give different result when levels are uwu and uvu" do
    Owoify.owoify(SOURCE, :uwu).should_not eq(Owoify.owoify(SOURCE, :uvu))
  end

  expect_raises(Exception, "not supported") do
    Owoify.owoify(SOURCE, :abc)
  end

  it "should owoify pokemon names" do
    File.read_lines(POKEMON_NAME_LIST_PATH).each do |name|
      name_with_owo = Owoify.owoify(name)
      name_with_uwu = Owoify.owoify(name, :uwu)
      name_with_uvu = Owoify.owoify(name, :uvu)
      name_with_owo.should_not eq("")
      name_with_uwu.should_not eq("")
      name_with_uvu.should_not eq("")
      name_with_owo.should_not eq(nil)
      name_with_uwu.should_not eq(nil)
      name_with_uvu.should_not eq(nil)
    end
  end

  it "should owoify long text" do
    text = File.read(WAR_AND_PEACE_PATH)
    text_with_owo = Owoify.owoify(text)
    text_with_uwu = Owoify.owoify(text, :uwu)
    text_with_uvu = Owoify.owoify(text, :uvu)
    text_with_owo.should_not eq("")
    text_with_uwu.should_not eq("")
    text_with_uvu.should_not eq("")
    text_with_owo.should_not eq(nil)
    text_with_uwu.should_not eq(nil)
    text_with_uvu.should_not eq(nil)
  end
end
