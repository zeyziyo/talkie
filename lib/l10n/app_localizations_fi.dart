// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Finnish (`fi`).
class AppLocalizationsFi extends AppLocalizations {
  AppLocalizationsFi([String locale = 'fi']) : super(locale);

  @override
  String get basicWords => 'Perussanojen arkisto';

  @override
  String get inputLanguage => 'Syöttökieli';

  @override
  String get translationLanguage => 'Käännöskieli';

  @override
  String get simplifiedGuidance =>
      'Muunna arkipäiväiset keskustelut vieraalle kielelle hetkessä! Talkie tallentaa kielielämäsi.';

  @override
  String get noDataForLanguage =>
      'Valitulla kielellä ei ole oppimateriaalia paikallisessa tietokannassa. Lataa materiaali tai valitse toinen kieli.';

  @override
  String versionLabel(String version) {
    return 'Version: $version';
  }

  @override
  String get developerContact => 'Developer Contact: talkie.help@gmail.com';

  @override
  String get cancel => 'Peruuta';

  @override
  String get accuracy => 'Tarkkuus';

  @override
  String get ttsMissing =>
      'Tämän kielen puhemoottoria ei ole asennettu laitteeseesi.';

  @override
  String get ttsInstallGuide =>
      'Asenna kielipaketti Android-asetuksista > Googlen tekstistä puheeksi -toiminnosta.';

  @override
  String get adLoading =>
      'Mainoksen lataus käynnissä. Yritä hetken kuluttua uudelleen.';

  @override
  String get addNewSubject => 'Lisää uusi nimi';

  @override
  String get addParticipant => 'Lisää osallistuja';

  @override
  String get addTagHint => 'Lisää tagi...';

  @override
  String get alreadyHaveAccount => 'Onko sinulla jo tili?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'Automaattinen toisto';

  @override
  String get basic => 'Perus';

  @override
  String get basicDefault => 'Perus';

  @override
  String get basicMaterialRepository => 'Perussanojen/lauseiden arkisto';

  @override
  String get basicSentenceRepository => 'Peruslausevarasto';

  @override
  String get basicSentences => 'Peruslauseiden arkisto';

  @override
  String get basicWordRepository => 'Perussanavarasto';

  @override
  String get caseObject => 'Objekti';

  @override
  String get casePossessive => 'Genetiivi';

  @override
  String get casePossessivePronoun => 'Possessiivipronomini';

  @override
  String get caseReflexive => 'Refleksiivipronomini';

  @override
  String get caseSubject => 'Nominatiivi';

  @override
  String get chatAiChat => 'Chatti';

  @override
  String get chatAllConversations => 'Kaikki keskustelut';

  @override
  String get chatChoosePersona => 'Valitse persoona';

  @override
  String get chatEndMessage => 'Haluatko lopettaa keskustelun?';

  @override
  String get chatEndTitle => 'Lopeta ja tallenna keskustelu';

  @override
  String chatFailed(Object error) {
    return 'Keskustelu epäonnistui: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'Keskustelusta ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'Keskusteluhistoria';

  @override
  String get chatNew => 'Uusi keskustelu';

  @override
  String get chatNewChat => 'Uusi keskustelu';

  @override
  String get chatNoConversations => 'Ei vielä keskusteluja';

  @override
  String get chatSearchHint => 'Hae keskusteluja otsikon perusteella...';

  @override
  String get chatNoteSearchHint => 'Hae muistiinpanoista...';

  @override
  String get chatSaveAndExit => 'Tallenna ja lopeta';

  @override
  String get chatStartNewPrompt => 'Aloita uusi keskustelu harjoitellaksesi!';

  @override
  String get chatTypeHint => 'Kirjoita viesti...';

  @override
  String get chatUntitled => 'Nimetön keskustelu';

  @override
  String get checking => 'Tarkistetaan...';

  @override
  String get clearAll => 'Tyhjennä kaikki';

  @override
  String get confirm => 'Vahvista';

  @override
  String get confirmDelete => 'Haluatko varmasti poistaa tämän?';

  @override
  String get confirmDeleteConversation =>
      'Haluatko varmasti poistaa tämän keskustelun?\nPoistettuja keskusteluja ei voi palauttaa.';

  @override
  String get confirmDeleteParticipant => 'Haluatko poistaa tämän osallistujan?';

  @override
  String get contextTagHint =>
      'Kirjoita tilanne helpottamaan myöhempää tunnistamista';

  @override
  String get contextTagLabel =>
      'Konteksti/Tilanne (valinnainen) - Esim. Aamutervehdys, Kohtelias';

  @override
  String get copiedToClipboard => 'Kopioitu leikepöydälle!';

  @override
  String get copy => 'Kopioi';

  @override
  String get correctAnswer => 'Oikea Vastaus';

  @override
  String get createNew => 'Luo Uusi';

  @override
  String get currentLocation => 'Nykyinen sijainti';

  @override
  String get currentMaterialLabel => 'Valittu aineisto:';

  @override
  String get delete => 'Poista';

  @override
  String deleteFailed(String error) {
    return 'Poisto epäonnistui: $error';
  }

  @override
  String get deleteRecord => 'Poista Tietue';

  @override
  String get dialogueQuestDesc =>
      'Harjoittele keskusteluja roolipelin avulla. Valitse sopiva vastaus ja sano se.';

  @override
  String get dialogueQuestTitle => 'Keskustelutehtävä';

  @override
  String get disambiguationPrompt => 'Minkä merkityksen haluat kääntää?';

  @override
  String get disambiguationTitle => 'Valitse merkitys';

  @override
  String get dontHaveAccount => 'Eikö sinulla ole tiliä?';

  @override
  String get editParticipant => 'Muokkaa osallistujaa';

  @override
  String get email => 'Sähköposti';

  @override
  String get emailAlreadyInUse =>
      'Sähköpostiosoite on jo käytössä. Kirjaudu sisään tai palauta salasana.';

  @override
  String get enterNewSubjectName => 'Kirjoita uusi nimi';

  @override
  String get enterSentenceHint => 'Kirjoita lause...';

  @override
  String get enterTextHint => 'Kirjoita teksti, jonka haluat kääntää';

  @override
  String get enterTextToTranslate => 'Syötä teksti käännettäväksi';

  @override
  String get enterWordHint => 'Kirjoita sana...';

  @override
  String get error => 'Virhe';

  @override
  String get errorHateSpeech =>
      'Käännöstä ei voi tehdä, koska se sisältää vihapuhetta.';

  @override
  String get errorOtherSafety =>
      'AI-turvallisuuskäytäntöjen vuoksi käännös on estetty.';

  @override
  String get errorProfanity =>
      'Käännöstä ei voi tehdä, koska se sisältää sopimatonta kielenkäyttöä.';

  @override
  String get errorSelectCategory => 'Valitse ensin sana tai lause!';

  @override
  String get errorSexualContent =>
      'Käännöstä ei voi tehdä, koska se sisältää seksuaalista sisältöä.';

  @override
  String get errors => 'Virheet:';

  @override
  String get female => 'Nainen';

  @override
  String get file => 'Tiedosto:';

  @override
  String get filterAll => 'Kaikki';

  @override
  String get flip => 'Käännä';

  @override
  String get formComparative => 'Komparatiivi';

  @override
  String get formInfinitive => 'Infinitiivi/Perusmuoto';

  @override
  String get formPast => 'Mennyt aika';

  @override
  String get formPastParticiple => 'Päättynyt Partisiippi';

  @override
  String get formPlural => 'Monikko';

  @override
  String get formPositive => 'Positiivi';

  @override
  String get formPresent => 'Nykymuoto';

  @override
  String get formPresentParticiple => 'Nykymuotoinen Partisiippi (-ing)';

  @override
  String get formSingular => 'Yksikkö';

  @override
  String get formSuperlative => 'Superlatiivi';

  @override
  String get formThirdPersonSingular => '3. Persoona Yksikkö';

  @override
  String get gameModeDesc => 'Valitse harjoiteltava pelitila';

  @override
  String get gameModeTitle => 'Pelitila';

  @override
  String get gameOver => 'Peli ohi';

  @override
  String get gender => 'Sukupuoli';

  @override
  String get labelFilterMaterial => 'Materiaali';

  @override
  String get labelFilterTag => 'Tunniste';

  @override
  String get generalTags => 'Yleiset tunnisteet';

  @override
  String get getMaterials => 'Hanki materiaaleja';

  @override
  String get good => 'Hyvä';

  @override
  String get googleContinue => 'Jatka Googlella';

  @override
  String get helpDialogueImportDesc =>
      'Tuo kokonaisia keskustelukokonaisuuksia JSON-tiedostoista.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON Structure: Uses `dialogues` array instead of `entries`.\n• Auto-Restoration: Conversation title, persona, and message order are recovered.\n• Location: Imported chats appear in the AI Chat mode\'s \'History\' tab.';

  @override
  String get helpJsonDesc => 'Tilan 3 tuontia varten luo JSON:';

  @override
  String get helpJsonTypeDialogue => 'Keskustelu (Dialogue)';

  @override
  String get helpJsonTypeSentence => 'Lause (Sentence)';

  @override
  String get helpJsonTypeWord => 'Sana (Word)';

  @override
  String get helpMode1Desc =>
      'Aloita kielten oppiminen intuitiivisimmin premium-tilaäänimikrofonin ja suuren näppäimistökuvakkeen avulla.';

  @override
  String get helpMode1Details =>
      '• Kieliasetukset: Tarkista oma kielesi ja opiskelemasi kieli aloitusnäytön yläreunassa olevasta kielipainikkeesta ja muuta opiskelukieltä.\n• Yksinkertainen syöttö: Syötä heti keskellä olevan suuren mikrofonin ja tekstikentän kautta.\n• Tarkista asetukset: Kun syöttö on valmis, paina oikealla olevaa sinistä valintamerkkiä. Näyttöön tulee yksityiskohtainen asetusikkuna.\n• Yksityiskohtaiset asetukset: Määritä avautuvassa valintaikkunassa tallennettava tietokokoelma, kommentit (muistiinpanot) ja tunnisteet.\n• Käännä nyt: Kun olet määrittänyt asetukset, tekoäly suorittaa käännöksen välittömästi painamalla vihreää käännöspainiketta.\n• Automaattinen haku: Havaitsee ja näyttää reaaliajassa samankaltaiset aiemmat käännökset syöttämisen aikana.\n• Kuuntele ja tallenna: Kuuntele ääntämistä käännöstuloksen alareunassa olevalla kaiutinkuvakkeella ja lisää se oppimisluetteloon \"Tallenna tiedot\" -toiminnolla.';

  @override
  String get helpMode2Desc =>
      'Kertaa tallennetut lauseet piilottamalla käännös.';

  @override
  String get helpMode2Details =>
      '• Materiaalin valinta: Käytä oikean yläkulman valikkoa (⋮) valitaksesi \'Valitse oppimateriaali\' tai \'Online-materiaalikirjasto\'\n• Kortin kääntäminen: Tarkista käännös valinnalla \'Näytä/Piilota\'\n• Kuunteleminen: Toista ääntä painamalla kaiutinkuvaketta\n• Oppiminen valmis: Merkitse suoritetuksi valintamerkillä (V)\n• Poistaminen: Poista merkintöjä pitkällä painalluksella\n• Haku ja suodattimet: Tukee hakupalkkia (reaaliaikainen älykäs haku) sekä tunniste- ja alkukirjainsuodattimia';

  @override
  String get helpMode3Desc =>
      'Harjoittele ääntämistä kuuntelemalla ja toistamalla lauseita (varjostus).';

  @override
  String get helpMode3Details =>
      '• Valitse: Valitse paketti\n• Aikaväli: [-] [+] odotusaika (3s-60s)\n• Aloita/Lopeta: Hallitse istuntoa\n• Puhu: Kuuntele ja toista\n• Pisteet: Tarkkuus (0-100)\n• Uusinta: Painike jos ääntä ei tunnisteta';

  @override
  String get helpModeChatDesc =>
      'Harjoittele käytännön keskustelua keskustelemalla tekoälypersoonan kanssa.';

  @override
  String get helpModeChatDetails =>
      '• AI-chat: Harjoittele käytännön keskusteluja persoonan kanssa alareunan välilehdellä \'Chat\'\n• Persoonan asetukset: Määritä vapaasti vastapuolen sukupuoli, nimi ja kielikoodi\n• GPS-tilanneleikki: Tunnistaa nykyisen sijaintisi ja suosittelee paikkaan sopivia keskustelunaiheita\n• Kaksi kieltä: AI:n vastaukset näytetään käännöksen kera, mikä maksimoi oppimisen\n• Historianhallinta: Suodata menneitä keskusteluja ja tallenna tiettyjä viestejä oppimismateriaaliksi keskustelujen aikana';

  @override
  String get helpTabJson => 'JSON Muoto';

  @override
  String get helpTabModes => 'Tilat';

  @override
  String get helpTabTour => 'Kierros';

  @override
  String get helpTitle => 'Ohje & Opas';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get hide => 'Piilota';

  @override
  String importAdded(int count) {
    return 'Lisätty: $count';
  }

  @override
  String get importComplete => 'Tuonti Valmis';

  @override
  String get importDuplicateTitleError =>
      'Samanniminen aineisto on jo olemassa. Yritä uudelleen nimen muuttamisen jälkeen.';

  @override
  String importErrorMessage(String error) {
    return 'Tiedoston tuonti epäonnistui:\\n$error';
  }

  @override
  String get importFailed => 'Tuonti Epäonnistui';

  @override
  String importFile(String fileName) {
    return 'Tiedosto: $fileName';
  }

  @override
  String get importJsonFile => 'Tuo JSON';

  @override
  String get importJsonFilePrompt => 'Tuo JSON tiedosto';

  @override
  String importSkipped(int count) {
    return 'Ohitettu: $count';
  }

  @override
  String importTotal(int count) {
    return 'Yhteensä: $count';
  }

  @override
  String get importing => 'Tuodaan...';

  @override
  String get inputModeTitle => 'Syöttö';

  @override
  String intervalSeconds(int seconds) {
    return 'Aikaväli: ${seconds}s';
  }

  @override
  String get invalidEmail => 'Syötä kelvollinen sähköposti.';

  @override
  String get kakaoContinue => 'Jatka Kakaolla';

  @override
  String get labelLangCode => 'Kielikoodi (esim. en-US, ko-KR)';

  @override
  String get labelName => 'Nimi';

  @override
  String get labelNote => 'Huomautus';

  @override
  String get labelPOS => 'Sanaluokka';

  @override
  String get labelRole => 'Rooli';

  @override
  String get labelSentence => 'Lause';

  @override
  String get labelSentenceCollection => 'Lausekokoelma';

  @override
  String get labelSentenceType => 'Lauseen tyyppi';

  @override
  String get labelShowMemorized => 'Valmiit';

  @override
  String get labelType => 'Tyyppi:';

  @override
  String get labelWord => 'Sana';

  @override
  String get labelWordbook => 'Sanakokoelma';

  @override
  String get language => 'Kieli';

  @override
  String get languageSettings => 'Kieliasetukset';

  @override
  String get languageSettingsTitle => 'Kieliasetukset';

  @override
  String get libTitleFirstMeeting => 'Ensimmäinen tapaaminen';

  @override
  String get libTitleGreetings1 => 'Tervehdykset 1';

  @override
  String get libTitleNouns1 => 'Substantiivit 1';

  @override
  String get libTitleVerbs1 => 'Verbit 1';

  @override
  String get listen => 'Kuuntele';

  @override
  String get listening => 'Kuunnellaan...';

  @override
  String get loadingParticipants => 'Ladataan osallistujia...';

  @override
  String get location => 'Sijainti';

  @override
  String get login => 'Kirjaudu sisään';

  @override
  String get logout => 'Kirjaudu ulos';

  @override
  String get logoutConfirmMessage =>
      'Haluatko kirjautua ulos tästä laitteesta?';

  @override
  String get logoutConfirmTitle => 'Kirjaudu ulos';

  @override
  String get male => 'Mies';

  @override
  String get manageParticipants => 'Hallitse osallistujia';

  @override
  String get manual => 'Manuaalinen syöttö';

  @override
  String get markAsStudied => 'Merkitse Opiskelluksi';

  @override
  String get materialInfo => 'Materiaalin tiedot';

  @override
  String get me => 'Minä';

  @override
  String get menuDeviceImport => 'Tuo materiaalia laitteesta';

  @override
  String get menuHelp => 'Ohje';

  @override
  String get menuLanguageSettings => 'Kieliasetukset';

  @override
  String get menuOnlineLibrary => 'Online-kirjasto';

  @override
  String get menuSelectMaterialSet => 'Valitse opiskelumateriaali';

  @override
  String get menuSettings => 'Settings';

  @override
  String get menuTutorial => 'Käyttöopastus';

  @override
  String get menuWebDownload => 'Käyttöohje';

  @override
  String get metadataDialogTitle => 'Yksityiskohtainen luokittelu';

  @override
  String get metadataFormType => 'Grammatinen muoto';

  @override
  String get metadataRootWord => 'Perusmuoto (Root Word)';

  @override
  String get micButtonTooltip => 'Käynnistä äänentunnistus';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Valittu aineisto: $name';
  }

  @override
  String get mode2Title => 'Kertaus';

  @override
  String get mode3Next => 'Seuraava';

  @override
  String get mode3Start => 'Aloita';

  @override
  String get mode3Stop => 'Lopeta';

  @override
  String get mode3TryAgain => 'Yritä uudelleen';

  @override
  String get mySentenceCollection => 'Oma lausekokoelmani';

  @override
  String get myWordbook => 'Oma sanakirjani';

  @override
  String get neutral => 'Neutraali';

  @override
  String get newSubjectName => 'Uuden sanasto-/lausekokoelman nimi';

  @override
  String get next => 'Seuraava';

  @override
  String get noDialogueHistory => 'Ei keskusteluhistoriaa.';

  @override
  String get noInternetWarningMic =>
      'Ei internet-yhteyttä. Äänentunnistus ei välttämättä toimi offline-tilassa.';

  @override
  String get noInternetWarningTranslate =>
      'Ei internet-yhteyttä. Käännöstoiminto ei ole käytettävissä offline-tilassa. Käytä kertaustilaa.';

  @override
  String get noMaterialsInCategory => 'Tässä kategoriassa ei ole aineistoja.';

  @override
  String get noParticipantsFound => 'Ei rekisteröityjä osallistujia.';

  @override
  String get noRecords => 'Ei tietueita valitulle kielelle';

  @override
  String get noStudyMaterial => 'Opiskelumateriaalia ei ole.';

  @override
  String get noTextToPlay => 'Ei tekstiä toistettavaksi';

  @override
  String get noTranslationToSave => 'Ei käännöstä tallennettavaksi';

  @override
  String get noVoiceDetected => 'Ääntä ei havaittu';

  @override
  String get notSelected => '- Ei valittu -';

  @override
  String get onlineLibraryCheckInternet =>
      'Tarkista internetyhteys tai yritä myöhemmin uudelleen.';

  @override
  String get onlineLibraryLoadFailed => 'Aineiston lataaminen epäonnistui.';

  @override
  String get onlineLibraryNoMaterials => 'Aineistoa ei ole.';

  @override
  String get participantDeleted => 'Osallistuja on poistettu.';

  @override
  String get participantRename => 'Nimeä osallistuja uudelleen';

  @override
  String get partner => 'Kumppani';

  @override
  String get partnerMode => 'Kumppanitila';

  @override
  String get password => 'Salasana';

  @override
  String get passwordTooShort =>
      'Salasanan on oltava vähintään 6 merkkiä pitkä.';

  @override
  String get perfect => 'Täydellistä!';

  @override
  String get personaFriend => 'Paikallinen ystävä';

  @override
  String get personaGuide => 'Matkaopas';

  @override
  String get personaTeacher => 'Englannin opettaja';

  @override
  String get playAgain => 'Pelaa uudelleen';

  @override
  String playbackFailed(String error) {
    return 'Toisto epäonnistui: $error';
  }

  @override
  String get playing => 'Toistetaan...';

  @override
  String get posAdjective => 'Adjektiivi';

  @override
  String get posAdverb => 'Adverbi';

  @override
  String get posConjunction => 'Konjunktio';

  @override
  String get posInterjection => 'Huudahdus';

  @override
  String get posNoun => 'Substantiivi';

  @override
  String get posPreposition => 'Prepositio';

  @override
  String get posPronoun => 'Pronomini';

  @override
  String get posVerb => 'Verbi';

  @override
  String get practiceModeTitle => 'Harjoittelu';

  @override
  String get practiceWordsOnly => 'Harjoittele vain sanoja';

  @override
  String progress(int current, int total) {
    return 'Edistyminen: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return 'Näytä $count viimeksi luotua';
  }

  @override
  String recognitionFailed(String error) {
    return 'Puheentunnistus epäonnistui: $error';
  }

  @override
  String get recognized => 'Tunnistus valmis';

  @override
  String get recognizedText => 'Tunnistettu puhe:';

  @override
  String get recordDeleted => 'Tietue poistettu';

  @override
  String get refresh => 'Päivitä';

  @override
  String get reset => 'Nollaa';

  @override
  String get resetPracticeHistory => 'Nollaa harjoitteluhistoria';

  @override
  String get retry => 'Yritetäänkö uudelleen?';

  @override
  String get reviewAll => 'Kertaa kaikki';

  @override
  String reviewCount(int count) {
    return 'Kerrattu $count kertaa';
  }

  @override
  String get reviewModeTitle => 'Kertaus';

  @override
  String get roleAi => 'AI';

  @override
  String get roleThirdParty => 'Kolmas osapuoli';

  @override
  String get roleUser => 'Käyttäjä';

  @override
  String get save => 'Tallenna';

  @override
  String get saveData => 'Tallenna';

  @override
  String saveFailed(String error) {
    return 'Tallennus epäonnistui: $error';
  }

  @override
  String get saveTranslationsFromSearch => 'Tallenna käännöksiä hakutilasta';

  @override
  String get saved => 'Tallennettu';

  @override
  String get saving => 'Tallennetaan...';

  @override
  String score(String score) {
    return 'Tarkkuus: $score%';
  }

  @override
  String get scoreLabel => 'Pisteet';

  @override
  String get search => 'Haku';

  @override
  String get searchConditions => 'Hakuehdot';

  @override
  String get searchSentenceHint => 'Hae lauseita...';

  @override
  String get searchWordHint => 'Hae sanoja...';

  @override
  String get sectionSentence => 'Lauseosa';

  @override
  String get sectionSentences => 'Lauseet';

  @override
  String get sectionWord => 'Sanaosio';

  @override
  String get sectionWords => 'Sanat';

  @override
  String get selectExistingSubject => 'Valitse olemassa oleva nimi';

  @override
  String get selectMaterialPrompt => 'Valitse opiskelumateriaali';

  @override
  String get selectMaterialSet => 'Valitse oppimateriaali';

  @override
  String get selectPOS => 'Valitse puheosa';

  @override
  String get selectParticipants => 'Valitse osallistujat';

  @override
  String get selectSentenceType => 'Valitse lausetyyppi';

  @override
  String get selectStudyMaterial => 'Valitse Materiaali';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => 'Lause';

  @override
  String get signUp => 'Rekisteröidy';

  @override
  String get similarTextFound => 'Samankaltainen teksti löytyi';

  @override
  String get skip => 'Ohita';

  @override
  String get source => 'Lähde:';

  @override
  String get sourceLanguage => 'Lähdekieli';

  @override
  String get sourceLanguageLabel => 'Source Language';

  @override
  String get speakNow => 'Puhu nyt!';

  @override
  String get speaker => 'Puhuja';

  @override
  String get speakerSelect => 'Valitse puhuja';

  @override
  String get speakingPractice => 'Puheharjoitus';

  @override
  String get startChat => 'Aloita keskustelu';

  @override
  String get startPractice => 'Aloita';

  @override
  String get startTutorial => 'Aloita Kierros';

  @override
  String get startWarning => 'Varoitus';

  @override
  String get startsWith => 'Alkaa kirjaimella';

  @override
  String get statusCheckEmail =>
      'Vahvista sähköpostiosoitteesi suorittaaksesi todennus.';

  @override
  String statusDownloading(Object name) {
    return 'Ladataan: $name...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'Tuonti epäonnistui: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name tuotu onnistuneesti';
  }

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLoginCancelled => 'Kirjautuminen peruutettiin.';

  @override
  String statusLoginFailed(Object error) {
    return 'Kirjautuminen epäonnistui: $error';
  }

  @override
  String get statusLoginSuccess => 'Kirjautuminen onnistui.';

  @override
  String get statusLogoutSuccess => 'Kirjauduttu ulos.';

  @override
  String statusSignUpFailed(Object error) {
    return 'Rekisteröityminen epäonnistui: $error';
  }

  @override
  String get statusSigningUp => 'Rekisteröidytään...';

  @override
  String get stopPractice => 'Lopeta';

  @override
  String get studyComplete => 'Opiskeltu';

  @override
  String studyRecords(int count) {
    return 'Tietueet ($count)';
  }

  @override
  String get styleFormal => 'Teitittely';

  @override
  String get styleInformal => 'Sinuttelu';

  @override
  String get stylePolite => 'Kohtelias';

  @override
  String get styleSlang => 'Slangi/Argot';

  @override
  String get subject => 'Aihe:';

  @override
  String get swapLanguages => 'Vaihda kielet';

  @override
  String get switchToAi => 'Vaihda AI-tilaan';

  @override
  String get switchToPartner => 'Vaihda kumppanitilaan';

  @override
  String get syncingData => 'Synkronoidaan tietoja...';

  @override
  String get tabConversation => 'Keskustelu';

  @override
  String tabReview(int count) {
    return 'Kertaus ($count)';
  }

  @override
  String get tabSentence => 'tuomita';

  @override
  String get tabSpeaking => 'Puhuminen';

  @override
  String tabStudyMaterial(int count) {
    return 'Materiaali ($count)';
  }

  @override
  String get tabWord => 'sana';

  @override
  String get tagFormal => 'Kohtelias';

  @override
  String get tagSelection => 'Tagin valinta';

  @override
  String get targetLanguage => 'Kohdekieli';

  @override
  String get targetLanguageFilter => 'Kohdekieli Suodatin:';

  @override
  String get targetLanguageLabel => 'Target Language';

  @override
  String get thinkingTimeDesc =>
      'Aikaa miettiä ennen kuin oikea vastaus paljastetaan.';

  @override
  String get thinkingTimeInterval => 'Ajatteluaika';

  @override
  String get timeUp => 'Aika loppui!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'Otsikkotunniste (aineistokirjasto)';

  @override
  String get tooltipDecrease => 'Vähennä';

  @override
  String get tooltipIncrease => 'Lisää';

  @override
  String get tooltipSearch => 'Haku';

  @override
  String get tooltipSpeaking => 'Puhuminen';

  @override
  String get tooltipStudyReview => 'Opiskelu+Kertaus';

  @override
  String totalRecords(int count) {
    return 'Yhteensä $count tietuetta (näytä kaikki)';
  }

  @override
  String get translate => 'Käännä';

  @override
  String get translating => 'Käännetään...';

  @override
  String get translation => 'Käännös';

  @override
  String get translationComplete => 'Käännös valmis (tallenna)';

  @override
  String translationFailed(String error) {
    return 'Käännös epäonnistui: $error';
  }

  @override
  String get translationLimitExceeded => 'Käännösraja ylitetty';

  @override
  String get translationLimitMessage =>
      'Olet käyttänyt kaikki päivittäiset ilmaiset käännökset (5 kertaa).\\n\\nHaluatko katsoa mainoksen ja ladata 5 lisää heti?';

  @override
  String get translationLoaded => 'Tallennettu käännös ladattu';

  @override
  String get translationRefilled =>
      'Käännöskertojen määrä on ladattu, 5 kertaa!';

  @override
  String get translationResultHint => 'Käännöksen tulos - muokattavissa';

  @override
  String get tryAgain => 'Yritä uudelleen';

  @override
  String get tutorialAiChatDesc =>
      'Harjoittele käytännön keskusteluja AI-persoonien kanssa.';

  @override
  String get tutorialAiChatTitle => 'AI-chatti';

  @override
  String get tutorialContextDesc =>
      'Lisää asiayhteys (esim. Aamu) erottaaksesi samanlaiset lauseet.';

  @override
  String get tutorialContextTitle => 'Asiayhteystunniste';

  @override
  String get tutorialLangSettingsDesc =>
      'Määritä käännettävä lähdekieli ja kohdekieli.';

  @override
  String get tutorialLangSettingsTitle => 'Kieliasetukset';

  @override
  String get tutorialM1ToggleDesc =>
      'Vaihda sana- ja lausetilan välillä tässä.';

  @override
  String get tutorialM1ToggleTitle => 'Sana/Lause -tila';

  @override
  String get tutorialM2DropdownDesc => 'Valitse oppimateriaali.';

  @override
  String get tutorialM2ImportDesc => 'Tuo JSON-tiedosto laitteen kansiosta.';

  @override
  String get tutorialM2ListDesc =>
      'Tarkista kortit ja käännä ne. (Long-press to delete)';

  @override
  String get tutorialM2ListTitle => 'Opiskelulista';

  @override
  String get tutorialM2SearchDesc =>
      'Hae tallennettuja sanoja ja lauseita löytääksesi ne nopeasti.';

  @override
  String get tutorialM2SelectDesc =>
      'Valitse materiaali tai \'Kertaa Kaikki\'.';

  @override
  String get tutorialM2SelectTitle => 'Valitse & Suodata';

  @override
  String get tutorialM3IntervalDesc => 'Säädä odotusaika lauseiden välillä.';

  @override
  String get tutorialM3IntervalTitle => 'Aikaväli';

  @override
  String get tutorialM3ResetDesc =>
      'Clear your progress and accuracy scores to start fresh.';

  @override
  String get tutorialM3ResetTitle => 'Reset History';

  @override
  String get tutorialM3SelectDesc => 'Valitse setti puheharjoitukseen.';

  @override
  String get tutorialM3SelectTitle => 'Valitse Materiaali';

  @override
  String get tutorialM3StartDesc => 'Paina toista aloittaaksesi.';

  @override
  String get tutorialM3StartTitle => 'Aloita';

  @override
  String get tutorialM3WordsDesc =>
      'Jos tämä on valittu, harjoitellaan vain tallennettuja sanoja.';

  @override
  String get tutorialM3WordsTitle => 'Sanaharjoittelu';

  @override
  String get tutorialMicDesc => 'Napauta mikrofonia äänisyötettä varten.';

  @override
  String get tutorialMicTitle => 'Äänisyöte';

  @override
  String get tutorialSaveDesc => 'Tallenna käännös tietueisiin.';

  @override
  String get tutorialSaveTitle => 'Tallenna';

  @override
  String get tutorialSwapDesc => 'Vaihdan kieleni oppimaani kieleen.';

  @override
  String get tutorialTabDesc => 'Täältä voit valita haluamasi oppimistilan.';

  @override
  String get tutorialTapToContinue => 'Napauta jatkaaksesi';

  @override
  String get tutorialTransDesc => 'Napauta tästä kääntääksesi.';

  @override
  String get tutorialTransTitle => 'Käännä';

  @override
  String get typeExclamation => 'Huudahdus';

  @override
  String get typeImperative => 'Käsky';

  @override
  String get typeQuestion => 'Kysymys';

  @override
  String get typeStatement => 'Toteamus';

  @override
  String get usageLimitTitle => 'Käyttöraja saavutettu';

  @override
  String get useExistingText => 'Käytä Olemassaolevaa';

  @override
  String get viewOnlineGuide => 'Näytä online-opas';

  @override
  String get voluntaryTranslations => 'Vapaaehtoiset käännökset';

  @override
  String get watchAdAndRefill => 'Katso mainos ja lataa (+5 kertaa)';

  @override
  String get word => 'Sana';

  @override
  String get wordDefenseDesc =>
      'Puolusta tukikohtaa sanomalla sanat ennen kuin viholliset saapuvat.';

  @override
  String get wordDefenseTitle => 'Sana puolustus';

  @override
  String get wordModeLabel => 'Sanatila';

  @override
  String get yourPronunciation => 'Sinun ääntämys';

  @override
  String get ttsUnsupportedNatively =>
      'Tämän laitteen oletusasetukset eivät tue tekstin puheeksi muuntoa tällä kielellä.';

  @override
  String get homeTab => 'Käännä';

  @override
  String get welcomeTitle => 'Tervetuloa Talkieen!';

  @override
  String get welcomeDesc =>
      'Tervetuloa Talkieen! Tukee yli 80:tä kieltä ympäri maailmaa 100-prosenttisella tarkkuudella, ja tarjoaa täydellisen oppimiskokemuksen uudella premium-3D-muotoilulla ja optimoidulla suorituskyvyllä.';

  @override
  String get welcomeButton => 'Aloita';

  @override
  String get labelDetails => 'Lisäasetukset';

  @override
  String get translationResult => 'Käännöstulos';

  @override
  String get inputContent => 'Syöttö';

  @override
  String get translateNow => 'Käännä nyt';

  @override
  String get tooltipSettingsConfirm => 'Vahvista asetukset';

  @override
  String get hintNoteExample => 'Esimerkki: Konteksti, samannimiset sanat jne.';

  @override
  String get hintTagExample => 'Esimerkki: Liiketoiminta, matkailu...';

  @override
  String get addNew => 'Lisää uusi';

  @override
  String get newNotebookTitle => 'Uuden muistikirjan nimi';

  @override
  String get enterNameHint => 'Syötä nimi';

  @override
  String get add => 'Lisää';

  @override
  String get openSettings => 'Avaa asetukset';

  @override
  String get helpNotebook =>
      'Valitse kansio, johon haluat tallentaa käännetyt tulokset.';

  @override
  String get helpNote =>
      'Kirjoita vapaasti sanan merkitys, esimerkkejä tai tilanteita.';

  @override
  String get helpTag =>
      'Kirjoita avainsanoja, joilla voit myöhemmin luokitella tai etsiä.';

  @override
  String get requestTranslation => 'Pyydä käännöstä';

  @override
  String get statusRequestSuccess => 'Käännöspyyntö onnistui.';

  @override
  String statusRequestFailed(String error) {
    return 'Käännöspyyntö epäonnistui: $error';
  }

  @override
  String get studyLangNotFoundTitle => 'Oppimiskieltä ei tueta';

  @override
  String studyLangNotFoundDesc(String targetLang) {
    return 'Valitsemasi materiaali ei tue nykyistä oppimiskieltäsi ($targetLang), joten sitä ei voida tallentaa paikallisesti. Haluatko pyytää käännöstä?';
  }
}
