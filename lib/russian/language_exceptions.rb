# encoding: utf-8

module Russian; end

module Russian::LanguageExceptions
  EXCEPTIONS = {
    #"авто" => "авто",
    #"примус" => "примуса",
    "кинозвезда" => "кинозвёзды",
    "нелюбовь" => "нелюбви",
    #"тенор" => "тенора",
    "пчела" => "пчёлы",
    "отрок" => "отроки",
    "хитрец" => "хитрецы",
    "багрец" => "багрецы",
    "индеец" => "индейцы",
    #"стог" => "стога",
    #"адрес" => "адреса",
    "стул" => "стулья",
    "лист" => "листья",
    "брат" => "братья",
    "муж" => "мужья",
    "сын" => "сыновья",
    "человек" => "люди",
    "ребёнок" => "дети",
    "мать" => "матери",
    "дочь" => "дочери",
    "багор" => "багры",
    "камень" => "камни",
    "поршень" => "поршни",
    "трутень" => "трутни",
    "дребедень" => "дребедени",
    "слепень" => "слепни",
    "плетень" => "плетни",
    "пролежень" => "пролежни",
    "оборотень" => "оборотни",
    #"баловень" => "баловни",
    "барин" => "баре",
    "беглец" => "беглецы",
    "бедро" => "бёдра",
    #"берег" => "берега",
    "береста" => "берёсты",
    #"тюлень" => "тюлени",
    #"изгой" => "изгои",
    "устой" => "устои",
    "блесна" => "блёсны",
    #"ближний" => "ближние",
    "алюминий" => "алюминии",
    "аммоний" => "аммонии",
    "магний" => "магнии",
    "близнец" => "близнецы",
    "бобок" => "боби",
    "боец" => "бойцы",
    "бок" => "бока",
    "болгарин" => "болгары",
    #"борт" => "борта",
    "боярин" => "бояре",
    "бревно" => "брёвна",
    "брелок" => "брелоки",
    "бремя" => "бремена",
    "бронепоезд" => "бронепоезда",
    "брус" => "брусья",
    "брюхо" => "брюхи",
    "бубен" => "бубны",
    "бугор" => "бугры",
    #"будущее" => "будущие",
    #"буфер" => "буфера",
    #"бюллетень" => "бюллетени",
    "ведро" => "вёдра",
    #"веер" => "веера",
    #"век" => "века",
    "вензель" => "вензеля",
    "веретено" => "веретёна",
    "верста" => "вёрсты",
    #"вертел" => "вертела",
    #"вес" => "веса",
    "весло" => "вёсла",
    "весна" => "вёсны",
    "весь" => "всё",
    "ветер" => "ветры",
    "ветла" => "вётлы",
    #"вечер" => "вечера",
    "вихор" => "вихры",
    "внучонок" => "внучата",
    "водопой" => "водопои",
    "войлок" => "войлоки",
    "войско" => "войска",
    "волок" => "волоки",
    "волчонок" => "волчата",
    "время" => "времена",
    "друг" => "друзья",
    #"глаз" => "глаза",
    #"дом" => "дома",
    #"город" => "города",
    #"голос" => "голоса",
    "имя" => "имена",
    "жена" => "жёны",
    "любовь" => "любви",
    "плечо" => "плечи",
    #"директор" => "директора",
    #"лес" => "леса",
    #"номер" => "номера",
    #"рост" => "роста",
    "край" => "края",
    "небо" => "небеса",
    #"герой" => "герои",
    "церковь" => "церкви",
    "дерево" => "деревья",
    "хозяин" => "хозяева",
    "угол" => "углы",
    #"степень" => "степени",
    "господин" => "господа",
    "сон" => "сны",
    "повод" => "поводья",
    "обод" => "ободья",
    "чтец" => "чтецы",
    "стремя" => "стремена",
    "застой" => "застои",
    "исток" => "истоки",
    #"разбой" => "разбои",
    "огонь" => "огни",
    "ухо" => "уши",
    "рот" => "рты",
    "снег" => "снега",
    "звезда" => "звёзды",
    "сестра" => "сёстры",
    "слеза" => "слёзы",
    "учитель" => "учителя",
    "колено" => "колени",
    "стекло" => "стёкла",
    "сосед" => "соседи",
    #"тень" => "тени",
    "лагерь" => "лагеря",
    "князь" => "князья",
    "чудо" => "чудеса",
    "поток" => "потоки",
    #"осень" => "осени",
    "лоб" => "лбы",
    "восток" => "востоки",
    "щека" => "щёки",
    "колесо" => "колёса",
    "крыло" => "крылья",
    "лев" => "львы",
    "рабочий" => "рабочие",
    #"покой" => "покои",
    "село" => "сёла",
    "озеро" => "озёра",
    #"строй" => "строи",
    #"русский"=>"русские",
    "овен" => "овны",
    #"гобой" => "гобои",
    "деверь" => "деверья",
    "татарчонок" => "татарчата",
    "чирей" => "чирьи",
    "древо" => "древеса",
    #"заводский" => "заводские",
    "столешница" => "столешници",
    "умысел" => "умыслы",
    "лжец" => "лжецы",
    "мокрец" => "мокрецы",
    "овражек" => "овражки",
    "стервец" => "стервецы",
    "метла" => "мётлы",
    "кормчий" => "кормчие",
    #"покрой" => "покрои",
    "преисподняя" => "преисподние",
    "шило" => "шилья",
    #"пельмень" => "пельмени",
    "приток" => "притоки",
    "хохол" => "хохлы",
    "вымысел" => "вымыслы",
    "вымя" => "вымена",
    #"подлежащее" => "подлежащие", # check
    "собрат" => "собратья",
    #"дребедень" => "дребедени",
    "решето" => "решёта",
    "храбрец" => "храбрецы",
    "дружище" => "дружищи",
    "дятел" => "дятлы",
    "якорь" => "якоря",
    "зарок" => "зароки",
    "лягушонок" => "лягушата",
    "молебен" => "молебны",
    "чернец" => "чернецы",
    "отток" => "оттоки",
    #"казанский" => "казанские", # check
    "запой" => "запои",
    "галчонок" => "галчата",
    "сверло" => "свёрла",
    #"рыжий" => "рыжие", # check
    "мезонин" => "мезонины",
    "мосол" => "мослы",
    #"раскрой" => "раскрои",
    "чело" => "чёла",
    "чеснок" => "чесноки",
    "доброволец" => "доброволцы",
    "егерь" => "егеря",
    "помысел" => "помыслы",
    #"сажень" => "сажени",
    "чехол" => "чехлы",
    "кум" => "кумовья",
    "рожь" => "ржи",
    #"ячмень" => "ячмени",
    "десна" => "дёсны",
    "спец" => "спецы",
    "полено" => "поленья",
    "морок" => "мороки",
    "перешеек" => "перешейки",
    "репей" => "репьи",
    "седок" => "седоки",
    "темя" => "темена",
    "мох" => "мхи",
    #"голень" => "голени",
    "татарин" => "татары",
    "мышонок" => "мышата",
    "угорь" => "угри",
    #"леший" => "лешие", # check
    "озерцо" => "озёрца",
    "настой" => "настои",
    "домысел" => "домыслы",
    #"плесень" => "плесени",
    "клин" => "клинья",
    #"ясень" => "ясени",
    "сирень" => "сирени",
    "стебель" => "стебли",
    "жрец" => "жрецы",
    "ров" => "рвы",
    "мигрень" => "мигрени",
    "увалень" => "увальни",
    "облачко" => "облачка",
    "улей" => "ульи",
    "ломоть" => "ломти",
    "дитя" => "дети",
    "знаток" => "знатоки",
    "игрок" => "игроки",
    #"кистень" => "кистени",
    "глухой" => "глухие", # check ++
    #"нищий" => "нищие",
    #"одинокий" => "одинокие",
    #"начинающий" => "начинающие",
    #"утопающий" => "утопающие",
    #"умерший" => "умершие",
    #"новенький" => "новенькие",
    #"главнокомандующий" => "главнокомандующие",
  }

  IMMUTABLE = %w{авто инкогнито кредо фойе бунгало амплуа ателье атташе барокко бра бусы бюро вето колье 
    домино маэстро кимоно кино кофе конферансье медиа кабаре какао динго тире каре харчо эссе декольте
    сальто соло желе фиаско резюме табло плато саше трико динамо пианино марго сельпо иже манто протеже
    эскимо депо казино конго помело досье турне самбо саго танго портмоне сопрано портье ре индиго контральто
  }

  WITH_A = %w{
    рост номер лес директор профессор голос город дом глаз вес вертел век веер буфер борт 
    берег примус тенор стог адрес вечер цвет доктор мастер остров поезд том окорок перепел
    корпус короб закром терем фраер детдом кучер юнкер флюгер крейсер
  }
end