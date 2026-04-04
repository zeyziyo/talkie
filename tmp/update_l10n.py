import os
import re

def update_arb_files():
    l10n_dir = r"c:\FlutterProjects\talkie\lib\l10n"
    
    # Translation mapping for 'noteGuidance'
    # "Where you enter additional details for more accurate translation"
    translations = {
        'af': 'Waar jy bykomende besonderhede insit vir meer akkurate vertaling',
        'am': 'ለትክክለኛ ትርጉም ተጨማሪ ዝርዝሮችን የት እንደሚያስገቡ',
        'ar': 'حيث تقوم بإدخال تفاصيل إضافية لترجمة أكثر دقة',
        'as': 'অধিক সঠিক অনুবাদৰ বাবে আপুনি অতিৰিক্ত বিৱৰণ এণ্টাৰ কৰা ঠাই',
        'az': 'Daha dəqiq tərcümə üçün əlavə detalları daxil etdiyiniz yer',
        'be': 'Дзе вы ўводзіце дадатковыя звесткі для больш дакладнага перакладу',
        'bg': 'Където въвеждате допълнителни подробности за по-точен превод',
        'bn': 'আরও সঠিক অনুবাদের জন্য যেখানে আপনি অতিরিক্ত বিবরণ লিখবেন',
        'bo': 'ཡང་དག་པའི་ལོ་ཙཱའི་ཆེད་དུ་ཁྱེད་ཀྱིས་ཞིབ་ཕྲའི་གནས་ཚུལ་ཁ་སྣོན་འཇུག་ས།',
        'bs': 'Gdje unosite dodatne detalje za precizniji prijevod',
        'ca': 'On introduïu detalls addicionals per a una traducció més precisa',
        'cs': 'Zde zadáváte další podrobnosti pro přesnější překlad',
        'cy': "Lle rydych chi'n nodi manylion ychwanegol ar gyfer cyfieithiad mwy cywir",
        'da': 'Her indtaster du yderligere detaljer for en mere præcis oversættelse',
        'de': 'Geben Sie hier zusätzliche Details für eine genauere Übersetzung ein',
        'el': 'Όπου εισάγετε πρόσθετες λεπτομέρειες για ακριβέστερη μετάφραση',
        'en': 'Where you enter additional details for more accurate translation',
        'es': 'Donde ingresas detalles adicionales para una traducción más precisa',
        'et': 'Kuhu sisestate täpsemaks tõlkimiseks täiendavaid üksikasju',
        'eu': 'Itzulpen zehatzagoa lortzeko xehetasun gehigarriak sartzen dituzun lekua',
        'fa': 'جایی که جزئیات اضافی را برای ترجمه دقیق‌تر وارد می‌کنید',
        'fi': 'Mihin syötät lisätietoja tarkempaa käännöstä varten',
        'fil': 'Kung saan mo ipinapasok ang karagdagang mga detalye para sa mas tumpak na pagsasalin',
        'fr': 'Où vous saisissez des détails supplémentaires pour une traduction plus précise',
        'gl': 'Onde introduce detalles adicionais para unha tradución máis precisa',
        'gu': 'વધુ સચોટ અનુવાદ માટે جہاں તમે વધારાની વિગતો દાખલ કરો છો',
        'he': 'היכן שאתה מזין פרטים נוספים לתרגום מדויק יותר',
        'hi': 'अधिक सटीक अनुवाद के लिए जहां आप अतिरिक्त विवरण दर्ज करते हैं',
        'hr': 'Gdje unosite dodatne pojedinosti za točniji prijevod',
        'hu': 'Ahol további részleteket adhat meg a pontosabb fordítás érdekében',
        'hy': 'Այնտեղ, որտեղ դուք մուտքագրում եք լրացուցիչ մանրամասներ ավելի ճշգ리տ թարգմանության համար',
        'id': 'Tempat Anda memasukkan detail tambahan untuk terjemahan yang lebih akurat',
        'is': 'Þar sem þú slærð inn frekari upplýsingar fyrir nákvæmari þýðingu',
        'it': 'Dove inserisci dettagli aggiuntivi per una traduzione più accurata',
        'ja': 'より正確な翻訳のために詳細を入力하는 장소',
        'ka': 'სადაც შეიყვანთ დამატებით დეტალებს უფრო ზუსტი თარგმანისთვის',
        'kk': 'Дәлірек аударма үшін қосымша мәліметтерді енгізетін жер',
        'km': 'កន្លែងដែលអ្នកបញ្ចូលព័ត៌មានលម្អិតបន្ថែមសម្រាប់ការបកប្រែដែលកាន់តែត្រឹមត្រូវ',
        'kn': 'ಹೆಚ್ಚು ನಿಖರವಾದ ಅನುವಾದಕ್ಕಾಗಿ ನೀವು ಹೆಚ್ಚುವರಿ ವಿವರಗಳನ್ನು ಎಲ್ಲಿ ನಮூದಿಸುತ್ತೀರಿ',
        'ko': '정확한 번역을 위하여 추가적인 내용을 입력하는 곳',
        'ky': 'Так которуу үчүн кошумча маалы말тарды киргизе турган жер',
        'lo': 'ບ່ອນ​ທີ່​ທ່ານ​ປ້ອນ​ລາຍ​ລະ​ອຽດ​ເພີ່ມ​ເຕີມ​ສໍາ​ລັບ​ການ​ແປ​ພາ​ສາ​ໃຫ້​ຖືກ​ต้อง​ຫຼາຍ​ຂຶ້ນ',
        'lt': 'Kur įvedate papildomą informaciją tikslesniam vertimui',
        'lv': 'Kur ievadāt papildu informāciju precīzākam tulkojumam',
        'mk': 'Каде внесувате дополнителни детали за поточен превод',
        'ml': 'കൂടുതൽ കൃത്യമായ വിവർത്തനത്തിനായി നിങ്ങൾ കൂടുതൽ വിശദാംശങ്ങൾ നൽകുന്നിടത്ത്',
        'mn': 'Илүү нарийвчлалтай орчуулгын тулд нэмэл트 мэдээллийг хаана оруулах вэ',
        'mr': 'अधिक अचूक अनुवादासाठी तुम्ही अतिरिक्त तपशील कुठे प्रविष्ट करता',
        'ms': 'Tempat anda memasukkan butiran tambahan untuk terjemahan yang lebih tepat',
        'my': 'ပိုမိုတိကျသောဘာသာပြန်ဆိုမှုအတွက် နောက်ထပ်အသေးစိတ်အချက်အလက်များကို သင်ထည့်သွင်းသည့်နေရာ',
        'nb': 'Hvor du skriver inn ytterligere detaljer for mer nøyaktig oversettelse',
        'ne': 'थप सटीक अनुवादको लागि जहाँ तपៃঁলে थप विवरणहरू प्रविष्ट गर्नुहुन्छ',
        'nl': 'Waar u aanvullende details invoert voor een nauwkeurigere vertaling',
        'no': 'Hvor du skriver inn ytterligere detaljer for mer nøyaktig oversettelse',
        'or': 'ଅଧିକ ସଠିକ୍ ଅନୁବାଦ ପାଇଁ ଆପଣ ଯେଉଁଠାରେ ଅତିରିକ୍ତ ବିବରଣୀ ପ୍ରବେଶ କରନ୍ତି',
        'pa': 'ਵਧੇਰੇ ਸਹੀ ਅਨੁਵਾਦ ਲਈ ਜਿੱਥੇ ਤੁਸੀਂ ਵਾਧੂ ਵੇਰਵੇ ਦਰਜ ਕਰਦੇ ਹੋ',
        'pl': 'Gdzie wpisujesz dodatkowe szczegóły, aby uzyskać dokładniejsze tłumaczenie',
        'pt': 'Onde você insere detalhes adicionais para uma tradução mais precisa',
        'ro': 'Unde introduceți detalii suplimentare pentru o traducere mai precisă',
        'ru': 'Введите детали для более точного перевода',
        'si': 'වඩාත් නිවැරදි පරිවර්තනයක් සඳහා ඔබ අමතර තොරතුරු ඇතුළත් කරන ස්ථානය',
        'sk': 'Tu zadávate ďalšie podrobnosti pre presnejší preklad',
        'sl': 'Kjer vnesete dodatne podrobnosti za natančnejši prevod',
        'sq': 'Aty ku jepni detaje shtesë për përkthim më të saktë',
        'sr': 'Где уносите додатне детаље за прецизнији превод',
        'sv': 'Där du anger ytterligare information för en mer exakt översättning',
        'sw': 'Ambapo unaingiza maelezo ya ziada kwa tafsiri sahihi zaidi',
        'ta': 'மிகவும் துல்லியமான மொழிபெயர்ப்பிற்காக கூடுதல் விவரங்களை எங்கே உள்ளிடுவீர்கள்',
        'te': 'మరింత ఖచ్చيتమైన అనువాదం కోసం మీరు అదనపు వివరాలను ఇక్కడ నమోదు చేస్తారు',
        'th': 'ที่ซึ่งคุณป้อนรายละเอียดเพิ่มเติมเพื่อการแปลที่แม่นยำยิ่งขึ้น',
        'tl': 'Kung saan mo ipinapasok ang karagdagang mga detalye para sa mas tumpak na pagsasalin',
        'tr': 'Daha doğru çeviri için ek ayrıntıları girdiğiniz yer',
        'uk': 'Де ви вводите додаткові відомості для більш точного перекладу',
        'ur': 'جہاں آپ مزید درست ترجمہ کے لیے اضافی تفصیلات درج کرتے ہیں۔',
        'uz': "Aniqroq tarjima qilish uchun qo'shimcha ma'lumotlarni kiritadigan joy",
        'vi': 'Nơi bạn nhập thêm chi tiết để dịch chính xác hơn',
        'zh': '输入额外详细信息以获得更准确翻译的地方',
        'zh_CN': '输入额外详细信息以获得更准确翻译的地方',
        'zh_TW': '輸入額外詳細信息以獲得更準確翻譯的地方',
        'zu': 'Lapho ufaka khona imininingwane eyengeziwe ukuze uthole ukuhumusha okunembile'
    }

    files_updated = 0
    for filename in os.listdir(l10n_dir):
        if filename.startswith("app_") and filename.endswith(".arb"):
            locale_match = re.search(r"app_(.+)\.arb", filename)
            if not locale_match: continue
            locale = locale_match.group(1)
            
            lookup_locale = locale
            if lookup_locale not in translations:
                lookup_locale = locale.split('_')[0]
            
            if lookup_locale in translations:
                file_path = os.path.join(l10n_dir, filename)
                with open(file_path, 'r', encoding='utf-8') as f:
                    content = f.read()
                
                if '"noteGuidance"' in content:
                    # Skip if already exists but verify value?
                    continue
                
                last_brace_index = content.rfind('}')
                if last_brace_index != -1:
                    prefix = content[:last_brace_index].rstrip()
                    # Add comma if needed
                    last_comma = prefix.rfind(',')
                    last_quote = prefix.rfind('"')
                    
                    if last_quote > last_comma:
                        prefix += ','
                    
                    new_val = translations[lookup_locale].replace('"', '\\"')
                    new_line = f'\n  "noteGuidance": "{new_val}"\n'
                    new_content = prefix + new_line + '}\n'
                    
                    with open(file_path, 'w', encoding='utf-8') as f:
                        f.write(new_content)
                    files_updated += 1
            else:
                print(f"No translation for {locale}")
    
    print(f"Total files updated: {files_updated}")

if __name__ == "__main__":
    update_arb_files()
