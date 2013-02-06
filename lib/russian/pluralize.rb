# encoding: utf-8

module Russian
  module Pluralize extend self

    CONSONANT = %w{б в г д ж з й к л м н п р с т ф х ц ч ш щ} # согласные
    SOFT_CONSONANT = %w{й ч щ}

    def pluralize(word)
      return LanguageExceptions::EXCEPTIONS[word] if LanguageExceptions::EXCEPTIONS[word]
      return word if LanguageExceptions::IMMUTABLE.include?(word)
      return "#{word}а" if LanguageExceptions::WITH_A.include?(word)

      case detect_gender(word)
        when :male    then plural_male(word)
        when :female  then plural_female(word)
        when :middle  then plural_middle(word)
        else word
      end
    end

    def detect_gender(word)
      if word.end_with?('а', 'я', 'дь', 'ть', 'щь')
        :female
      elsif word.end_with?('й', 'ь') || word.end_with?(*CONSONANT)
        :male
      elsif word.end_with?('о', 'е')
        :middle
      else
        nil
      end
    end

    def plural_male(word)
      if word.end_with?('лец')
        word.sub(/ец$/, 'ьцы')
      elsif word.end_with?('иец', 'аец', 'еец')
        word.sub(/ец$/, 'йцы')
      elsif word.end_with?('ец')
        word.sub(/ец$/, 'цы')
      elsif word.end_with?('чек', 'шек')
        word.sub(/ек$/, 'ки')
      elsif word.end_with?('ок') && word.length > 4
        word.sub(/ок$/, 'ки')
      elsif word.end_with?('ной', 'вой', 'той', 'мой', 'пой', 'сой') && word.length > 4
        word.sub(/ой$/, "ые")
      elsif word.end_with?('ый', 'ой') && word.length > 4 # существительное от прилогательного
        word.sub(/ый$/, "ые").sub(/ой$/, "ои")
      elsif word.end_with?('щий', 'кий', 'ший', 'жий', 'ний')
        word.sub(/ий$/, "ие")
      elsif word.end_with?('нин')
        word.sub(/нин$/, "не")
      elsif word.end_with?(?й)
        word.sub(/й$/, ?и)
      elsif word.end_with?('вень', 'рень', 'день', 'чень')
        word.sub(/ень$/, 'ни')
      elsif word.end_with?('ень')
        word.sub(/ень$/, "ени")
      elsif word.end_with?(?ь)
        word.sub(/ь$/, ?и)
      elsif word.end_with?(*(SOFT_CONSONANT + [?к, ?г, ?х, ?ж, ?ш]))
        word.sub(/$/, ?и)
      elsif word.end_with?(*CONSONANT)
        word.sub(/$/, ?ы)
      else
        word.sub(/.$/, ?ы)
      end
    end

    def plural_female(word)
      if word.end_with?('жа', 'ша', 'ща', 'ча', 'ка', 'га', 'ха')
        word.sub(/а$/, ?и)
      elsif word.end_with?('ая') # существительное от прилогательного
        word.sub(/ая$/, "ые")
      elsif word.end_with?(?a)
        word.sub(/а$/, ?ы)
      elsif word.end_with?("ень")
        word.sub(/ень$/, "ени")
      elsif word.end_with?(?ь) || word.end_with?(?я)
        word.sub(/.$/, ?и)
      else
        word.sub(/.$/, ?ы)
      end
    end

    def plural_middle(word)
      if word.end_with?('ко')
        word.sub(/ко$/, "ки")
      elsif word.end_with?(?о)
        word.sub(/о$/, ?а)
      elsif word.end_with?('ое') # существительное от прилогательного
        word.sub(/ое$/, "ые")
      elsif word.end_with?('ще', 'че', 'це')
        word.sub(/.$/, ?а)
      elsif word.end_with?('щее', 'шее')
        word.sub(/ее$/, "ие")
      elsif word.end_with?(?е)
        word.sub(/.$/, ?я)
      else
        word.sub(/.$/, ?ы)
      end
    end
  end
end