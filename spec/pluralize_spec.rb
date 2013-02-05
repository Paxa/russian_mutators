# encoding: utf-8

require File.dirname(__FILE__) + '/test_helper'

describe Russian::Pluralize do
  it "should detect gender (male)" do
    {"диван" => "диваны", "стол" => "столы", "кирпич" => "кирпичи"}.each do |signle, plural|
      Russian::Pluralize.detect_gender(signle).should == :male
      Russian::Pluralize.pluralize(signle).should == plural
    end
  end

  it "should pass dictionary check" do
    require File.dirname(__FILE__) + '/../test_data/hash'

    Russian::Pluralize.pluralize("баржа").should == "баржи"
    i = 0
    wrong = 0
    KNOWN.each do |signle, plural|
      next if plural == ""
      i += 1
      #puts "#{signle} => #{Russian::Pluralize.detect_gender(signle)}"
      begin
        res = Russian::Pluralize.pluralize(signle)
        res.should == plural
      rescue Bacon::Error => e
        wrong += 1
        puts "#{signle.inspect} => #{plural.inspect}, (got #{res})"
      end
    end

    exceptions = Russian::LanguageExceptions::EXCEPTIONS.size + Russian::LanguageExceptions::IMMUTABLE.size + Russian::LanguageExceptions::WITH_A.size
    puts "   * #{i} words, follow rules #{(i - exceptions) / i.to_f * 100}%"

    wrong.should == 0
  end
end