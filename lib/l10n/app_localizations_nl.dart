// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get basicWords => 'Basis opslagplaats voor woorden';

  @override
  String get inputLanguage => 'Invoertaal';

  @override
  String get translationLanguage => 'Vertalingstaal';

  @override
  String get simplifiedGuidance =>
      'Zet alledaagse gesprekken direct om in een vreemde taal! Talkie houdt uw taalleven bij.';

  @override
  String get noDataForLanguage =>
      'Er zijn geen leermiddelen voor de gekozen taal in de lokale database. Download de gegevens of selecteer een andere taal.';

  @override
  String versionLabel(String version) {
    return 'Version: $version';
  }

  @override
  String get developerContact => 'Developer Contact: talkie.help@gmail.com';

  @override
  String get cancel => 'Annuleren';

  @override
  String get accuracy => 'Nauwkeurigheid';

  @override
  String get ttsMissing =>
      'De spraakengine voor deze taal is niet op uw apparaat geïnstalleerd.';

  @override
  String get ttsInstallGuide =>
      'Ga naar Android Instellingen > Google TTS en installeer de bijbehorende taalgegevens.';

  @override
  String get adLoading =>
      'Advertentie wordt geladen. Probeer het over een moment nog eens.';

  @override
  String get addNewSubject => 'Nieuwe titel toevoegen';

  @override
  String get addParticipant => 'Deelnemer toevoegen';

  @override
  String get addTagHint => 'Tag toevoegen...';

  @override
  String get alreadyHaveAccount => 'Heb je al een account?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'Automatisch afspelen';

  @override
  String get basic => 'Basis';

  @override
  String get basicDefault => 'Standaard';

  @override
  String get basicMaterialRepository =>
      'Basis opslagplaats voor zinnen/woorden';

  @override
  String get basicSentenceRepository => 'Basis Zinnenlijst';

  @override
  String get basicSentences => 'Basis opslagplaats voor zinnen';

  @override
  String get basicWordRepository => 'Basis Woordenlijst';

  @override
  String get caseObject => 'Accusatief';

  @override
  String get casePossessive => 'Genitief';

  @override
  String get casePossessivePronoun => 'Possessief voornaamwoord';

  @override
  String get caseReflexive => 'Reflexief';

  @override
  String get caseSubject => 'Nominatief';

  @override
  String get chatAiChat => 'Chatten';

  @override
  String get chatAllConversations => 'Alle gesprekken';

  @override
  String get chatChoosePersona => 'Kies persona';

  @override
  String get chatEndMessage => 'Wil je dit gesprek beëindigen?';

  @override
  String get chatEndTitle => 'Gesprek beëindigen en opslaan';

  @override
  String chatFailed(Object error) {
    return 'Chat mislukt: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'Fragment uit gesprek ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'Chatgeschiedenis';

  @override
  String get chatNew => 'Nieuwe chat';

  @override
  String get chatNewChat => 'Nieuwe chat';

  @override
  String get chatNoConversations => 'Nog geen gesprekken';

  @override
  String get chatSearchHint => 'Zoeken op chatnaam...';

  @override
  String get chatNoteSearchHint => 'Zoeken in notities...';

  @override
  String get chatSaveAndExit => 'Opslaan en afsluiten';

  @override
  String get chatStartNewPrompt => 'Start een nieuw gesprek om te oefenen!';

  @override
  String get chatTypeHint => 'Typ een bericht...';

  @override
  String get chatUntitled => 'Naamloze chat';

  @override
  String get checking => 'Controleren...';

  @override
  String get clearAll => 'Alles wissen';

  @override
  String get confirm => 'Bevestigen';

  @override
  String get confirmDelete => 'Weet u zeker dat u dit record wilt verwijderen?';

  @override
  String get confirmDeleteConversation =>
      'Weet je zeker dat je dit gesprek wilt verwijderen?\nVerwijderde gesprekken kunnen niet worden hersteld.';

  @override
  String get confirmDeleteParticipant =>
      'Weet je zeker dat je deze deelnemer wilt verwijderen?';

  @override
  String get contextTagHint =>
      'Noteer de situatie om het later gemakkelijk te kunnen onderscheiden';

  @override
  String get contextTagLabel =>
      'Context/Situatie (optioneel) - bijv. Ochtendgroet, Beleefd';

  @override
  String get copiedToClipboard => 'Gekopieerd naar het klembord!';

  @override
  String get copy => 'Kopiëren';

  @override
  String get correctAnswer => 'Juiste Antwoord';

  @override
  String get createNew => 'Nieuwe Maken';

  @override
  String get currentLocation => 'Huidige locatie';

  @override
  String get currentMaterialLabel => 'Momenteel geselecteerde materialen:';

  @override
  String get delete => 'Verwijderen';

  @override
  String deleteFailed(String error) {
    return 'Verwijderen mislukt: $error';
  }

  @override
  String get deleteRecord => 'Record verwijderen';

  @override
  String get dialogueQuestDesc =>
      'Oefen gesprekken via rollenspellen. Selecteer en spreek de juiste antwoorden.';

  @override
  String get dialogueQuestTitle => 'Dialoog Quest';

  @override
  String get disambiguationPrompt => 'Welke betekenis wilt u vertalen?';

  @override
  String get disambiguationTitle => 'Betekenis selecteren';

  @override
  String get dontHaveAccount => 'Heb je geen account?';

  @override
  String get editParticipant => 'Deelnemer bewerken';

  @override
  String get email => 'E-mail';

  @override
  String get emailAlreadyInUse =>
      'Dit e-mailadres is al in gebruik. Log in of gebruik de functie \'Wachtwoord vergeten\'.';

  @override
  String get enterNewSubjectName => 'Nieuwe titel invoeren';

  @override
  String get enterSentenceHint => 'Voer een zin in...';

  @override
  String get enterTextHint => 'Voer de tekst in om te vertalen';

  @override
  String get enterTextToTranslate => 'Voer tekst in om te vertalen';

  @override
  String get enterWordHint => 'Voer een woord in...';

  @override
  String get error => 'Fout';

  @override
  String get errorHateSpeech =>
      'Bevat haatzaaiende uitlatingen en kan niet worden vertaald.';

  @override
  String get errorOtherSafety =>
      'Vertaling geweigerd vanwege het AI-veiligheidsbeleid.';

  @override
  String get errorProfanity =>
      'Bevat ongepaste taal en kan niet worden vertaald.';

  @override
  String get errorSelectCategory => 'Selecteer eerst een woord of zin!';

  @override
  String get errorSexualContent =>
      'Bevat seksueel getinte inhoud en kan niet worden vertaald.';

  @override
  String get errors => 'Fouten:';

  @override
  String get female => 'Vrouw';

  @override
  String get file => 'Bestand:';

  @override
  String get filterAll => 'Alles';

  @override
  String get flip => 'Draaien';

  @override
  String get formComparative => 'Vergelijkend';

  @override
  String get formInfinitive => 'Infinitief/Tegenwoordige tijd';

  @override
  String get formPast => 'Verleden tijd';

  @override
  String get formPastParticiple => 'Voltooid deelwoord';

  @override
  String get formPlural => 'Meervoud';

  @override
  String get formPositive => 'Positief';

  @override
  String get formPresent => 'Tegenwoordige tijd';

  @override
  String get formPresentParticiple => 'Onvoltooid deelwoord (ing)';

  @override
  String get formSingular => 'Enkelvoud';

  @override
  String get formSuperlative => 'Superlatief';

  @override
  String get formThirdPersonSingular => 'Derde persoon enkelvoud';

  @override
  String get gameModeDesc => 'Selecteer de spelmodus om te oefenen';

  @override
  String get gameModeTitle => 'Spelmodus';

  @override
  String get gameOver => 'Game Over';

  @override
  String get gender => 'Geslacht';

  @override
  String get labelFilterMaterial => 'Materiaal';

  @override
  String get labelFilterTag => 'Tag';

  @override
  String get generalTags => 'Algemene tags';

  @override
  String get getMaterials => 'Materialen ophalen';

  @override
  String get good => 'Goed';

  @override
  String get googleContinue => 'Doorgaan met Google';

  @override
  String get helpDialogueImportDesc =>
      'Importeer een volledige set dialogen via een JSON-bestand.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON Structure: Uses `dialogues` array instead of `entries`.\n• Auto-Restoration: Conversation title, persona, and message order are recovered.\n• Location: Imported chats appear in the AI Chat mode\'s \'History\' tab.';

  @override
  String get helpJsonDesc =>
      'Om studiematerialen in Modus 3 te importeren, maak JSON bestand met deze structuur:';

  @override
  String get helpJsonTypeDialogue => 'Dialoog';

  @override
  String get helpJsonTypeSentence => 'Zin';

  @override
  String get helpJsonTypeWord => 'Woord';

  @override
  String get helpMode1Desc =>
      'Begin taalleerervaring op de meest intuïtieve manier met een premium 3D-microfoon en een groot toetsenbordpictogram.';

  @override
  String get helpMode1Details =>
      '• Taalinstellingen: Controleer uw taal en de taal die u leert met de taalknop bovenaan het startscherm, en verander de leertaal.\n• Eenvoudige invoer: Voer direct in via de grote microfoon en het tekstvak in het midden.\n• Instellingen controleren: Nadat u klaar bent met invoeren, drukt u op de blauwe vinkknop aan de rechterkant. Het gedetailleerde instellingenvenster verschijnt.\n• Gedetailleerde instellingen: In het dialoogvenster dat verschijnt, kunt u het materiaalboek, de annotatie (memo) en de tag specificeren die u wilt opslaan.\n• Nu vertalen: Nadat u de instellingen hebt voltooid, drukt u op de groene vertaalknop en de AI voert onmiddellijk de vertaling uit.\n• Automatisch zoeken: Detecteert en toont real-time vergelijkbare bestaande vertalingen tijdens het typen.\n• Luisteren en opslaan: Luister naar de uitspraak met het luidsprekerpictogram onder de vertaalresultaten en voeg het toe aan uw leerlijst via \'Gegevens opslaan\'.';

  @override
  String get helpMode2Desc =>
      'Herhaal opgeslagen zinnen met auto-verberg vertalingen.';

  @override
  String get helpMode2Details =>
      '• Materiaal selecteren: Gebruik \'Leermateriaal selecteren\' of \'Online materiaal\' in het menu (⋮) rechtsboven\n• Kaart omdraaien: Controleer de vertaling met \'Tonen/Verbergen\'\n• Luisteren: Afspelen van uitspraak via het luidsprekericoon\n• Leren voltooid: Afgewerkt leren markeren met een vinkje (V)\n• Verwijderen: Houd een kaart lang ingedrukt om de geschiedenis te verwijderen\n• Zoeken en filteren: Ondersteuning voor zoekbalk (realtime slim zoeken) en tags, filters voor beginletters';

  @override
  String get helpMode3Desc =>
      'Oefen je uitspraak door de zinnen te beluisteren en na te spreken (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Selecteer Materiaal: Kies studiepakket\n• Interval: [-] [+] pas wachttijd aan (3s-60s)\n• Start/Stop: Beheer sessie\n• Spreek: Luister audio en herhaal\n• Feedback: Score (0-100)\n• Probeer Opnieuw: Knop als stem niet gedetecteerd';

  @override
  String get helpModeChatDesc =>
      'Oefen echte gesprekken door te chatten met een AI-persona.';

  @override
  String get helpModeChatDetails =>
      '• AI-chat: oefen praktische gesprekken met persona\'s in het \'Chat\'-menu op de onderste tabbladbalk\n• Persona-instellingen: specificeer vrijelijk het geslacht, de naam en de taalcode van de andere partij\n• GPS-situatiespel: herkent mijn huidige locatie en beveelt gespreksonderwerpen aan die passen bij de locatie\n• Tweetalig: de antwoorden van de AI worden weergegeven met vertalingen om het leereffect te maximaliseren\n• Recordbeheer: filter de geschiedenis van eerdere gesprekken en sla specifieke berichten tijdens het gesprek op als leermateriaal';

  @override
  String get helpTabJson => 'JSON Formaat';

  @override
  String get helpTabModes => 'Modi';

  @override
  String get helpTabQuickStart => 'Snel aan de slag';

  @override
  String get helpTabTour => 'Rondleiding';

  @override
  String get helpTitle => 'Hulp & Gids';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get hide => 'Verbergen';

  @override
  String importAdded(int count) {
    return 'Toegevoegd: $count';
  }

  @override
  String get importComplete => 'Import Voltooid';

  @override
  String get importDuplicateTitleError =>
      'Er bestaat al materiaal met dezelfde titel. Wijzig de titel en probeer het opnieuw.';

  @override
  String importErrorMessage(String error) {
    return 'Bestand importeren mislukt:\\n$error';
  }

  @override
  String get importFailed => 'Import Mislukt';

  @override
  String importFile(String fileName) {
    return 'Bestand: $fileName';
  }

  @override
  String get importJsonFile => 'JSON Importeren';

  @override
  String get importJsonFilePrompt => 'Importeer a.u.b. een JSON-bestand';

  @override
  String importSkipped(int count) {
    return 'Overgeslagen: $count';
  }

  @override
  String importTotal(int count) {
    return 'Totaal: $count';
  }

  @override
  String get importing => 'Importeren...';

  @override
  String get inputModeTitle => 'Invoer';

  @override
  String intervalSeconds(int seconds) {
    return 'Interval: $seconds seconden';
  }

  @override
  String get invalidEmail => 'Voer een geldig e-mailadres in.';

  @override
  String get kakaoContinue => 'Doorgaan met Kakao';

  @override
  String get labelLangCode => 'Taalcode (bijv. en-US, ko-KR)';

  @override
  String get labelName => 'Naam';

  @override
  String get labelNote => 'Notitie';

  @override
  String get labelPOS => 'Woordsoort';

  @override
  String get labelRole => 'Rol';

  @override
  String get labelSentence => 'Zin';

  @override
  String get labelSentenceCollection => 'Zinnencollectie';

  @override
  String get labelSentenceType => 'Type zin';

  @override
  String get labelShowMemorized => 'Afgewerkt';

  @override
  String get labelType => 'Type:';

  @override
  String get labelWord => 'Woord';

  @override
  String get labelWordbook => 'Woordenboek';

  @override
  String get language => 'Taal';

  @override
  String get languageSettings => 'Taalinstellingen';

  @override
  String get languageSettingsTitle => 'Taalinstellingen';

  @override
  String get libTitleFirstMeeting => 'Eerste ontmoeting';

  @override
  String get libTitleGreetings1 => 'Groeten 1';

  @override
  String get libTitleNouns1 => 'Zelfstandige naamwoorden 1';

  @override
  String get libTitleVerbs1 => 'Werkwoorden 1';

  @override
  String get listen => 'Luisteren';

  @override
  String get listening => 'Luisteren...';

  @override
  String get loadingParticipants => 'Deelnemers laden...';

  @override
  String get location => 'Locatie';

  @override
  String get login => 'Inloggen';

  @override
  String get logout => 'Uitloggen';

  @override
  String get logoutConfirmMessage =>
      'Weet je zeker dat je wilt uitloggen van dit apparaat?';

  @override
  String get logoutConfirmTitle => 'Uitloggen';

  @override
  String get male => 'Man';

  @override
  String get manageParticipants => 'Deelnemers beheren';

  @override
  String get manual => 'Handmatige invoer';

  @override
  String get markAsStudied => 'Markeren als Bestudeerd';

  @override
  String get materialInfo => 'Materiaalinfo';

  @override
  String get me => 'Ik';

  @override
  String get menuDeviceImport => 'Materiaal importeren van apparaat';

  @override
  String get menuHelp => 'Help';

  @override
  String get menuLanguageSettings => 'Taalinstellingen';

  @override
  String get menuOnlineLibrary => 'Online bibliotheek';

  @override
  String get menuSelectMaterialSet => 'Kies studiemateriaal.';

  @override
  String get menuSettings => 'Settings';

  @override
  String get menuTutorial => 'Gebruikershandleiding';

  @override
  String get menuWebDownload => 'Gebruiksaanwijzing';

  @override
  String get metadataDialogTitle => 'Gedetailleerde classificatie';

  @override
  String get metadataFormType => 'Grammaticale vorm';

  @override
  String get metadataRootWord => 'Basisvorm (Root Word)';

  @override
  String get micButtonTooltip => 'Spraakherkenning starten';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Huidige geselecteerde materialen: $name';
  }

  @override
  String get mode2Title => 'Herhaling';

  @override
  String get mode3Next => 'Volgende';

  @override
  String get mode3Start => 'Start';

  @override
  String get mode3Stop => 'Stop';

  @override
  String get mode3TryAgain => 'Opnieuw proberen';

  @override
  String get mySentenceCollection => 'Mijn zinnenverzameling';

  @override
  String get myWordbook => 'Mijn woordenboek';

  @override
  String get neutral => 'Neutraal';

  @override
  String get newSubjectName => 'Nieuwe woordenlijst/zinscollectie titel';

  @override
  String get next => 'Volgende';

  @override
  String get noDialogueHistory => 'Geen dialooggeschiedenis.';

  @override
  String get noInternetWarningMic =>
      'Geen internetverbinding. Spraakherkenning is mogelijk niet beschikbaar in de offline modus.';

  @override
  String get noInternetWarningTranslate =>
      'Geen internetverbinding. De vertaalfunctie is niet beschikbaar in de offline modus. Gebruik de herhalingsmodus.';

  @override
  String get noMaterialsInCategory =>
      'Er zijn geen materialen in deze categorie.';

  @override
  String get noParticipantsFound => 'Geen deelnemers gevonden.';

  @override
  String get noRecords => 'Geen records voor geselecteerde taal';

  @override
  String get noStudyMaterial => 'Geen studiemateriaal.';

  @override
  String get noTextToPlay => 'Geen tekst om af te spelen';

  @override
  String get noTranslationToSave => 'Geen vertaling om op te slaan';

  @override
  String get noVoiceDetected => 'Geen stem gedetecteerd';

  @override
  String get notSelected => '- Niet geselecteerd -';

  @override
  String get onlineLibraryCheckInternet =>
      'Controleer je internetverbinding of probeer het later opnieuw.';

  @override
  String get onlineLibraryLoadFailed =>
      'Het laden van de materialen is mislukt.';

  @override
  String get onlineLibraryNoMaterials => 'Geen materialen.';

  @override
  String get participantDeleted => 'De deelnemer is verwijderd.';

  @override
  String get participantRename => 'Deelnemer hernoemen';

  @override
  String get partner => 'Partner';

  @override
  String get partnerMode => 'Partnermodus';

  @override
  String get password => 'Wachtwoord';

  @override
  String get passwordTooShort => 'Wachtwoord moet minimaal 6 tekens lang zijn.';

  @override
  String get perfect => 'Perfect!';

  @override
  String get personaFriend => 'Lokale vriend';

  @override
  String get personaGuide => 'Reisgids';

  @override
  String get personaTeacher => 'Engels leraar';

  @override
  String get playAgain => 'Nog een keer spelen';

  @override
  String playbackFailed(String error) {
    return 'Afspelen mislukt: $error';
  }

  @override
  String get playing => 'Afspelen...';

  @override
  String get posAdjective => 'Bijvoeglijk naamwoord';

  @override
  String get posAdverb => 'Bijwoord';

  @override
  String get posConjunction => 'Voegwoord';

  @override
  String get posInterjection => 'Tussenwerpsel';

  @override
  String get posNoun => 'Zelfstandig naamwoord';

  @override
  String get posPreposition => 'Voorzetsel';

  @override
  String get posPronoun => 'Voornaamwoord';

  @override
  String get posVerb => 'Werkwoord';

  @override
  String get practiceModeTitle => 'Oefenen';

  @override
  String get practiceWordsOnly => 'Alleen woorden oefenen';

  @override
  String progress(int current, int total) {
    return 'Voortgang: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return 'Toon de laatste $count items';
  }

  @override
  String recognitionFailed(String error) {
    return 'Spraakherkenning mislukt: $error';
  }

  @override
  String get recognized => 'Herkenning voltooid';

  @override
  String get recognizedText => 'Herkende uitspraak:';

  @override
  String get recordDeleted => 'Record succesvol verwijderd';

  @override
  String get refresh => 'Verversen';

  @override
  String get reset => 'Reset';

  @override
  String get resetPracticeHistory => 'Oefengeschiedenis resetten';

  @override
  String get retry => 'Opnieuw proberen?';

  @override
  String get reviewAll => 'Alles herhalen';

  @override
  String reviewCount(int count) {
    return '$count keer herhaald';
  }

  @override
  String get reviewModeTitle => 'Herhaling';

  @override
  String get roleAi => 'AI';

  @override
  String get roleThirdParty => 'Derde partij';

  @override
  String get roleUser => 'Gebruiker';

  @override
  String get save => 'Opslaan';

  @override
  String get saveData => 'Opslaan';

  @override
  String saveFailed(String error) {
    return 'Opslaan mislukt: $error';
  }

  @override
  String get saveTranslationsFromSearch => 'Vertaal uit zoekmodus opslaan';

  @override
  String get saved => 'Opgeslagen';

  @override
  String get saving => 'Opslaan...';

  @override
  String score(String score) {
    return 'Nauwkeurigheid: $score%';
  }

  @override
  String get scoreLabel => 'Score';

  @override
  String get search => 'Zoeken';

  @override
  String get searchConditions => 'Zoekvoorwaarden';

  @override
  String get searchSentenceHint => 'Zoek zin...';

  @override
  String get searchWordHint => 'Zoek woord...';

  @override
  String get sectionSentence => 'Zinsdeel';

  @override
  String get sectionSentences => 'Zinnen';

  @override
  String get sectionWord => 'Woordsectie';

  @override
  String get sectionWords => 'Woorden';

  @override
  String get selectExistingSubject => 'Bestaande titel selecteren';

  @override
  String get selectMaterialPrompt => 'Selecteer a.u.b. studiemateriaal';

  @override
  String get selectMaterialSet => 'Leermaterialenset selecteren';

  @override
  String get selectPOS => 'Selecteer woordsoort';

  @override
  String get selectParticipants => 'Deelnemers selecteren';

  @override
  String get selectSentenceType => 'Selecteer zin type';

  @override
  String get selectStudyMaterial => 'Selecteer Materiaal';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => 'Zin';

  @override
  String get signUp => 'Aanmelden';

  @override
  String get similarTextFound => 'Vergelijkbare tekst gevonden';

  @override
  String get skip => 'Overslaan';

  @override
  String get source => 'Bron:';

  @override
  String get sourceLanguage => 'Brontaal';

  @override
  String get sourceLanguageLabel => 'Source Language';

  @override
  String get speakNow => 'Spreek nu!';

  @override
  String get speaker => 'Spreker';

  @override
  String get speakerSelect => 'Spreker selecteren';

  @override
  String get speakingPractice => 'Spreekoefening';

  @override
  String get startChat => 'Start chat';

  @override
  String get startPractice => 'Start Oefening';

  @override
  String get startTutorial => 'Start Rondleiding';

  @override
  String get startWarning => 'Waarschuwing';

  @override
  String get startsWith => 'Begint met';

  @override
  String get statusCheckEmail =>
      'Controleer uw e-mail om de verificatie te voltooien.';

  @override
  String statusDownloading(Object name) {
    return 'Downloaden: $name...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'Importeren mislukt: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name importeren voltooid';
  }

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLoginCancelled => 'Inloggen geannuleerd.';

  @override
  String statusLoginFailed(Object error) {
    return 'Inloggen mislukt: $error';
  }

  @override
  String get statusLoginSuccess => 'Succesvol ingelogd.';

  @override
  String get statusLogoutSuccess => 'Uitgelogd.';

  @override
  String statusSignUpFailed(Object error) {
    return 'Aanmelden mislukt: $error';
  }

  @override
  String get statusSigningUp => 'Aanmelden...';

  @override
  String get stopPractice => 'Stop Oefening';

  @override
  String get studyComplete => 'Bestudeerd';

  @override
  String studyRecords(int count) {
    return 'Records ($count)';
  }

  @override
  String get styleFormal => 'Formeel';

  @override
  String get styleInformal => 'Informeel';

  @override
  String get stylePolite => 'Beleefd';

  @override
  String get styleSlang => 'Straattaal/Slang';

  @override
  String get subject => 'Onderwerp:';

  @override
  String get swapLanguages => 'Talen omdraaien';

  @override
  String get switchToAi => 'Schakel over naar AI-modus';

  @override
  String get switchToPartner => 'Schakel over naar Partnermodus';

  @override
  String get syncingData => 'Gegevens synchroniseren...';

  @override
  String get tabConversation => 'Gesprek';

  @override
  String tabReview(int count) {
    return 'Herhalen ($count)';
  }

  @override
  String get tabSentence => 'zin';

  @override
  String get tabSpeaking => 'Spreken';

  @override
  String tabStudyMaterial(int count) {
    return 'Studiemateriaal ($count)';
  }

  @override
  String get tabWord => 'woord';

  @override
  String get tagFormal => 'Formeel';

  @override
  String get tagSelection => 'Tag selectie';

  @override
  String get targetLanguage => 'Doeltaal';

  @override
  String get targetLanguageFilter => 'Doeltaal Filter:';

  @override
  String get targetLanguageLabel => 'Target Language';

  @override
  String get thinkingTimeDesc =>
      'De tijd om na te denken voordat het antwoord wordt onthuld.';

  @override
  String get thinkingTimeInterval => 'Denktijd interval';

  @override
  String get timeUp => 'Tijd is om!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'Titel tag (collectie)';

  @override
  String get tooltipDecrease => 'Verminderen';

  @override
  String get tooltipIncrease => 'Verhogen';

  @override
  String get tooltipSearch => 'Zoeken';

  @override
  String get tooltipSpeaking => 'Spreken';

  @override
  String get tooltipStudyReview => 'Studie+Herhaling';

  @override
  String totalRecords(int count) {
    return 'Totaal $count records (Bekijk alles)';
  }

  @override
  String get translate => 'Vertalen';

  @override
  String get translating => 'Vertalen...';

  @override
  String get translation => 'Vertaling';

  @override
  String get translationComplete => 'Vertaling voltooid (opslaan vereist)';

  @override
  String translationFailed(String error) {
    return 'Vertaling mislukt: $error';
  }

  @override
  String get translationLimitExceeded => 'Vertaal limiet overschreden';

  @override
  String get translationLimitMessage =>
      'Je hebt alle dagelijkse gratis vertalingen (5 keer) gebruikt.\\n\\nWil je een advertentie bekijken en 5 keer direct opladen?';

  @override
  String get translationLoaded => 'Opgeslagen vertaling geladen';

  @override
  String get translationRefilled =>
      'Het aantal vertalingen is 5 keer opgeladen!';

  @override
  String get translationResultHint => 'Vertaling - kan worden bewerkt';

  @override
  String get tryAgain => 'Opnieuw Proberen';

  @override
  String get tutorialAiChatDesc =>
      'Oefen realistische gesprekken met AI-persona\'s.';

  @override
  String get tutorialAiChatTitle => 'AI Chat';

  @override
  String get tutorialContextDesc =>
      'Voeg context toe (bijv. Ochtend) om vergelijkbare zinnen te onderscheiden.';

  @override
  String get tutorialContextTitle => 'Contextlabel';

  @override
  String get tutorialLangSettingsDesc =>
      'Stel de brontaal en de doeltaal in voor vertaling.';

  @override
  String get tutorialLangSettingsTitle => 'Taalinstellingen';

  @override
  String get tutorialM1ToggleDesc => 'Schakel hier tussen woord- en zinmodus.';

  @override
  String get tutorialM1ToggleTitle => 'Woord/Zin modus';

  @override
  String get tutorialM2DropdownDesc => 'Selecteer studiemateriaal.';

  @override
  String get tutorialM2ImportDesc => 'Importeer JSON-bestand uit apparaatmap.';

  @override
  String get tutorialM2ListDesc =>
      'Bekijk opgeslagen kaarten en draai ze om. (Long-press to delete)';

  @override
  String get tutorialM2ListTitle => 'Studielijst';

  @override
  String get tutorialM2SearchDesc =>
      'Zoek en vind snel opgeslagen woorden en zinnen.';

  @override
  String get tutorialM2SelectDesc =>
      'Kies materialen of wissel naar \'Alles Herhalen\'.';

  @override
  String get tutorialM2SelectTitle => 'Selecteer & Filter';

  @override
  String get tutorialM3IntervalDesc => 'Pas de wachttijd tussen zinnen aan.';

  @override
  String get tutorialM3IntervalTitle => 'Interval instellen';

  @override
  String get tutorialM3ResetDesc =>
      'Clear your progress and accuracy scores to start fresh.';

  @override
  String get tutorialM3ResetTitle => 'Reset History';

  @override
  String get tutorialM3SelectDesc => 'Kies een set voor spreekoefening.';

  @override
  String get tutorialM3SelectTitle => 'Selecteer Materiaal';

  @override
  String get tutorialM3StartDesc => 'Tik play om te luisteren en na te zeggen.';

  @override
  String get tutorialM3StartTitle => 'Start Oefening';

  @override
  String get tutorialM3WordsDesc =>
      'Vink dit aan om alleen opgeslagen woorden te oefenen.';

  @override
  String get tutorialM3WordsTitle => 'Woord oefening';

  @override
  String get tutorialMicDesc => 'Tik op de microfoonknop om te starten.';

  @override
  String get tutorialMicTitle => 'Spraakinvoer';

  @override
  String get tutorialSaveDesc => 'Sla je vertaling op in studierecords.';

  @override
  String get tutorialSaveTitle => 'Opslaan';

  @override
  String get tutorialSwapDesc =>
      'Ik wissel mijn eigen taal om met de taal die ik aan het leren ben.';

  @override
  String get tutorialTabDesc => 'Hier kunt u de gewenste leermodus selecteren.';

  @override
  String get tutorialTapToContinue => 'Tik om door te gaan';

  @override
  String get tutorialTransDesc => 'Tik hier om je tekst te vertalen.';

  @override
  String get tutorialTransTitle => 'Vertalen';

  @override
  String get typeExclamation => 'Uitroep';

  @override
  String get typeImperative => 'Imperatief';

  @override
  String get typeQuestion => 'Vraag';

  @override
  String get typeStatement => 'Stelling';

  @override
  String get usageLimitTitle => 'Limiet bereikt';

  @override
  String get useExistingText => 'Gebruik Bestaande';

  @override
  String get viewOnlineGuide => 'Online gids bekijken';

  @override
  String get voluntaryTranslations => 'Vrijwillige vertalingen';

  @override
  String get watchAdAndRefill => 'Bekijk advertentie en laad op (+5 keer)';

  @override
  String get word => 'Woord';

  @override
  String get wordDefenseDesc =>
      'Verdedig je basis door de woorden te zeggen voordat de vijand arriveert.';

  @override
  String get wordDefenseTitle => 'Woordverdediging';

  @override
  String get wordModeLabel => 'Woordmodus';

  @override
  String get yourPronunciation => 'Jouw Uitspraak';

  @override
  String get ttsUnsupportedNatively =>
      'Deze taal wordt niet standaard ondersteund voor spraakuitvoer op dit apparaat.';

  @override
  String get homeTab => 'Vertalen';

  @override
  String get welcomeTitle => 'Welkom bij Talkie!';

  @override
  String get welcomeDesc =>
      'Welkom bij Talkie! We ondersteunen meer dan 80 talen over de hele wereld met 100% integriteit, en bieden een perfecte leerervaring met nieuwe premium 3D-ontwerpen en geoptimaliseerde prestaties.';

  @override
  String get welcomeButton => 'Aan de slag';

  @override
  String get labelDetails => 'Gedetailleerde instellingen';

  @override
  String get translationResult => 'Vertaling';

  @override
  String get inputContent => 'Invoer';

  @override
  String get translateNow => 'Vertaal nu';

  @override
  String get tooltipSettingsConfirm => 'Instellingen bevestigen';

  @override
  String get hintNoteExample => 'Bijv.: context, homoniemen, enz.';

  @override
  String get hintTagExample => 'Bijv.: Zakelijk, reizen...';

  @override
  String get addNew => 'Nieuwe toevoegen';

  @override
  String get newNotebookTitle => 'Nieuwe mapnaam';

  @override
  String get enterNameHint => 'Voer een naam in';

  @override
  String get add => 'Toevoegen';

  @override
  String get openSettings => 'Instellingen openen';

  @override
  String get helpNotebook =>
      'Selecteer de map waarin u de vertalingen wilt opslaan.';

  @override
  String get helpNote =>
      'Noteer vrijelijk de betekenis, voorbeelden of situaties van een woord.';

  @override
  String get helpTag =>
      'Voer trefwoorden in om later te categoriseren of te zoeken.';

  @override
  String get requestTranslation => 'Vertaalverzoek indienen';

  @override
  String get statusRequestSuccess => 'Vertaalverzoek voltooid.';

  @override
  String statusRequestFailed(String error) {
    return 'Vertaalverzoek mislukt: $error';
  }

  @override
  String get studyLangNotFoundTitle => 'Leertaal niet ondersteund';

  @override
  String studyLangNotFoundDesc(String targetLang) {
    return 'Het geselecteerde materiaal ondersteunt de huidige ingestelde leertaal ($targetLang) niet en kan niet lokaal worden opgeslagen. Wilt u een vertaling aanvragen?';
  }

  @override
  String get quickStartStep1Title => '1. Stel de taal in';

  @override
  String get quickStartStep1Desc =>
      'Stel eerst uw taal en de taal die u wilt leren in via Menu > Taalinstellingen.';

  @override
  String get quickStartStep2Title => '2. Basisworkflow';

  @override
  String get quickStartStep2Desc =>
      'Maak uw eigen leerkaarten in de volgorde: invoer (microfoon/toetsenbord) -> vertaling -> opslaan.';

  @override
  String get quickStartStep3Title => '3. Gebruik de modi';

  @override
  String get quickStartStep3Desc =>
      'Oefen met chatten en oefen uw uitspraak door de tekst te bekijken en zelf uit te spreken in het tabblad Oefen uitspraak.';
}
