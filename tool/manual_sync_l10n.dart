import 'dart:io';
import 'dart:convert';

// Master Keys to sync from app_en.arb
const kMasterKeys = [
  'chatHistoryTitle', 'chatNewChat', 'chatChoosePersona', 'chatTypeHint',
  'chatNoConversations', 'chatStartNewPrompt', 'personaTeacher', 'personaGuide',
  'personaFriend', 'chatAiChat', 'me', 'chatSaveAndExit', 'errorSelectCategory',
  'basicWordRepository', 'basicSentenceRepository', 'chatEndTitle', 'chatEndMessage',
  'tutorialAiChatTitle', 'tutorialAiChatDesc', 'tutorialM1ToggleTitle', 'tutorialM1ToggleDesc'
];

const kTranslations = {
  'ko': {
    'chatHistoryTitle': '대화 기록',
    'chatNewChat': '새 대화',
    'chatChoosePersona': '페르소나 선택',
    'chatTypeHint': '메시지를 입력하세요...',
    'chatNoConversations': '아직 대화가 없습니다',
    'chatStartNewPrompt': '연습을 위해 새 대화를 시작해보세요!',
    'personaTeacher': '영어 선생님',
    'personaGuide': '여행 가이드',
    'personaFriend': '현지인 친구',
    'chatAiChat': 'AI 채팅',
    'me': '나',
    'chatSaveAndExit': '저장 후 종료',
    'errorSelectCategory': '먼저 단어나 문장을 선택하세요!',
    'basicWordRepository': '기본 단어 저장소',
    'basicSentenceRepository': '기본 문장 저장소',
    'chatEndTitle': '대화 종료 및 저장',
    'chatEndMessage': '대화를 종료하시겠습니까?',
    'tutorialAiChatTitle': 'AI 채팅',
    'tutorialAiChatDesc': 'AI 페르소나와 실전 대화를 연습해 보세요.',
    'tutorialM1ToggleTitle': '단어/문장 모드',
    'tutorialM1ToggleDesc': '단어와 문장 모드를 여기서 전환하세요.',
  },
  'ja': {
    'chatHistoryTitle': '会話履歴',
    'chatNewChat': '新しいチャット',
    'chatChoosePersona': 'ペルソナを選択',
    'chatTypeHint': 'メッセージを入力...',
    'chatNoConversations': '会話がありません',
    'chatStartNewPrompt': '練習を始めるために新しいチャットを開始しましょう！',
    'personaTeacher': '英語の先生',
    'personaGuide': '旅行ガイド',
    'personaFriend': '地元の友人',
    'chatAiChat': 'AIチャット',
    'me': '私',
    'chatSaveAndExit': '保存して終了',
    'errorSelectCategory': '先に単語か文章を選択してください！',
    'basicWordRepository': '基本単語リポジトリ',
    'basicSentenceRepository': '基本文章リポジトリ',
    'chatEndTitle': '会話を終了して保存',
    'chatEndMessage': '会話を終了しますか？',
    'tutorialAiChatTitle': 'AIチャット',
    'tutorialAiChatDesc': 'AIペルソナと実践的な会話を練習しましょう。',
    'tutorialM1ToggleTitle': '単語/文章モード',
    'tutorialM1ToggleDesc': 'ここで単語と文章のモードを切り替えます。',
  },
  'zh': {
    'chatHistoryTitle': '对话历史',
    'chatNewChat': '新对话',
    'chatChoosePersona': '选择角色',
    'chatTypeHint': '输入消息...',
    'chatNoConversations': '暂无对话',
    'chatStartNewPrompt': '开始新对话进行练习！',
    'personaTeacher': '英语老师',
    'personaGuide': '旅行导游',
    'personaFriend': '当地朋友',
    'chatAiChat': 'AI聊天',
    'me': '我',
    'chatSaveAndExit': '保存并退出',
    'errorSelectCategory': '请先选择单词或句子！',
    'basicWordRepository': '基础词库',
    'basicSentenceRepository': '基础句库',
    'chatEndTitle': '结束并保存对话',
    'chatEndMessage': '是否结束此对话？',
    'tutorialAiChatTitle': 'AI聊天',
    'tutorialAiChatDesc': '在这里与 AI 角色练习实际对话。',
    'tutorialM1ToggleTitle': '单词/句子模式',
    'tutorialM1ToggleDesc': '在这里切换单词和句子模式。',
  },
  'es': {
    'chatHistoryTitle': 'Historial',
    'chatNewChat': 'Nuevo chat',
    'chatChoosePersona': 'Elige personaje',
    'chatTypeHint': 'Escribe aquí...',
    'chatNoConversations': 'Sin conversaciones',
    'chatStartNewPrompt': '¡Inicia un chat para practicar!',
    'personaTeacher': 'Profesor de inglés',
    'personaGuide': 'Guía de viaje',
    'personaFriend': 'Amigo local',
    'chatAiChat': 'Chat de IA',
    'me': 'Yo',
    'chatSaveAndExit': 'Guardar y salir',
    'errorSelectCategory': '¡Selecciona palabra o frase primero!',
    'basicWordRepository': 'Repositorio básico de palabras',
    'basicSentenceRepository': 'Repositorio básico de frases',
    'chatEndTitle': 'Finalizar y guardar',
    'chatEndMessage': '¿Quieres finalizar la conversación?',
    'tutorialAiChatTitle': 'Chat de IA',
    'tutorialAiChatDesc': 'Practica conversaciones reales con personajes de IA.',
    'tutorialM1ToggleTitle': 'Modo Palabra/Frase',
    'tutorialM1ToggleDesc': 'Cambia entre modo palabra y frase aquí.',
  },
  'fr': {
    'chatHistoryTitle': 'Historique',
    'chatNewChat': 'Nouveau chat',
    'chatChoosePersona': 'Choisir un personnage',
    'chatTypeHint': 'Écrivez ici...',
    'chatNoConversations': 'Aucune conversation',
    'chatStartNewPrompt': 'Commencez un chat pour vous entraîner !',
    'personaTeacher': 'Professeur d\'anglais',
    'personaGuide': 'Guide de voyage',
    'personaFriend': 'Ami local',
    'chatAiChat': 'Chat IA',
    'me': 'Moi',
    'chatSaveAndExit': 'Enregistrer et quitter',
    'errorSelectCategory': 'Veuillez d\'abord choisir mot ou phrase !',
    'basicWordRepository': 'Répertoire de mots de base',
    'basicSentenceRepository': 'Répertoire de phrases de base',
    'chatEndTitle': 'Fin et sauvegarde',
    'chatEndMessage': 'Voulez-vous terminer la conversation ?',
    'tutorialAiChatTitle': 'Chat IA',
    'tutorialAiChatDesc': 'Pratiquez des conversations réelles avec des IA.',
    'tutorialM1ToggleTitle': 'Mode Mot/Phrase',
    'tutorialM1ToggleDesc': 'Basculez entre le mode mot et phrase ici.',
  },
  'de': {
    'chatHistoryTitle': 'Verlauf',
    'chatNewChat': 'Neuer Chat',
    'chatChoosePersona': 'Persona wählen',
    'chatTypeHint': 'Nachricht schreiben...',
    'chatNoConversations': 'Keine Gespräche',
    'chatStartNewPrompt': 'Starte einen Chat zum Üben!',
    'personaTeacher': 'Englischlehrer',
    'personaGuide': 'Reiseführer',
    'personaFriend': 'Lokaler Freund',
    'chatAiChat': 'KI-Chat',
    'me': 'Ich',
    'chatSaveAndExit': 'Speichern & Beenden',
    'errorSelectCategory': 'Bitte zuerst Wort oder Satz wählen!',
    'basicWordRepository': 'Basis-Wortschatz',
    'basicSentenceRepository': 'Basis-Sätze',
    'chatEndTitle': 'Beenden & Speichern',
    'chatEndMessage': 'Möchten Sie den Chat beenden?',
    'tutorialAiChatTitle': 'KI-Chat',
    'tutorialAiChatDesc': 'Übe echte Gespräche mit KI-Personas.',
    'tutorialM1ToggleTitle': 'Wort/Satz-Modus',
    'tutorialM1ToggleDesc': 'Wechsle hier zwischen Wort- und Satzmodus.',
  },
  'it': {
    'chatHistoryTitle': 'Cronologia',
    'chatNewChat': 'Nuova chat',
    'chatChoosePersona': 'Scegli personaggio',
    'chatTypeHint': 'Scrivi un messaggio...',
    'chatNoConversations': 'Nessuna conversazione',
    'chatStartNewPrompt': 'Inizia una chat per fare pratica!',
    'personaTeacher': 'Insegnante di inglese',
    'personaGuide': 'Guida turistica',
    'personaFriend': 'Amico locale',
    'chatAiChat': 'Chat IA',
    'me': 'Io',
    'chatSaveAndExit': 'Salva ed esci',
    'errorSelectCategory': 'Seleziona prima parola o frase!',
    'basicWordRepository': 'Archivio parole base',
    'basicSentenceRepository': 'Archivio frasi base',
    'chatEndTitle': 'Fine e salva',
    'chatEndMessage': 'Vuoi terminare la conversazione?',
  },
  'pt': {
    'chatHistoryTitle': 'Histórico',
    'chatNewChat': 'Novo chat',
    'chatChoosePersona': 'Escolha person.',
    'chatTypeHint': 'Digite uma msg...',
    'chatNoConversations': 'Sem conversas',
    'personaTeacher': 'Professor de Inglês',
    'personaGuide': 'Guia de Viagem',
    'personaFriend': 'Amigo Local',
    'chatAiChat': 'Chat IA',
    'me': 'Eu',
    'chatSaveAndExit': 'Salvar e Sair',
  },
  'ru': {
    'chatHistoryTitle': 'История',
    'chatNewChat': 'Новый чат',
    'chatChoosePersona': 'Выбрать персонажа',
    'chatTypeHint': 'Напишите сообщение...',
    'chatNoConversations': 'Чатов пока нет',
    'chatAiChat': 'ИИ-Чат',
    'me': 'Я',
    'chatSaveAndExit': 'Сохранить и выйти',
  },
  'th': {
    'chatHistoryTitle': 'ประวัติการสนทนา',
    'chatNewChat': 'เริ่มแชทใหม่',
    'chatAiChat': 'แชท AI',
    'me': 'ฉัน',
    'chatSaveAndExit': 'บันทึกและออก',
  },
  'vi': {
    'chatHistoryTitle': 'Lịch sử trò chuyện',
    'chatNewChat': 'Trò chuyện mới',
    'chatAiChat': 'Trò chuyện AI',
    'me': 'Tôi',
    'chatSaveAndExit': 'Lưu và thoát',
  },
  'id': {
    'chatHistoryTitle': 'Riwayat Obrolan',
    'chatNewChat': 'Obrolan Baru',
    'chatAiChat': 'Obrolan AI',
    'me': 'Saya',
    'chatSaveAndExit': 'Simpan & Keluar',
  },
  'hi': {
    'chatHistoryTitle': 'बातचीत का इतिहास',
    'chatNewChat': 'नई चैट',
    'chatAiChat': 'AI चैट',
    'me': 'मैं',
    'chatSaveAndExit': 'सहेजें और बाहर निकलें',
  },
  'tr': {
    'chatHistoryTitle': 'Sohbet Geçmişi',
    'chatNewChat': 'Yeni Sohbet',
    'chatAiChat': 'Yapay Zeka Sohbeti',
    'me': 'Ben',
    'chatSaveAndExit': 'Kaydet ve Çık',
  },
  'ar': {
    'chatHistoryTitle': 'سجل الدردشة',
    'chatNewChat': 'دردشة جديدة',
    'chatAiChat': 'دردشة الذكاء الاصطناعي',
    'me': 'أنا',
    'chatSaveAndExit': 'حفظ وخروج',
  },
  // Adding core logic for remaining languages to use English as fallback for missing translations
};

void main() async {
  final l10ndir = Directory('lib/l10n');
  final masterFile = File('lib/l10n/app_en.arb');
  final masterJson = jsonDecode(await masterFile.readAsString()) as Map<String, dynamic>;

  var files = l10ndir.listSync().whereType<File>().where((f) => f.path.endsWith('.arb')).toList();
  
  for (var file in files) {
    final fileName = file.path.split(Platform.pathSeparator).last;
    final langCode = fileName.split('app_').last.split('.').first;
    
    // Skip master English and Korean (manually handled or source of truth)
    // Actually, update all EXCEPT English (master) and potentially Korean if it's already perfect
    if (langCode == 'en' || langCode == 'localizations') continue;

    print('Processing $langCode...');
    final content = await file.readAsString();
    Map<String, dynamic> json;
    try {
      json = jsonDecode(content) as Map<String, dynamic>;
    } catch (e) {
      print('Error parsing $fileName: $e');
      continue;
    }

    // 1. Remove deprecated keys
    json.remove('chatEditTitle');

    // 2. Apply translations
    final trans = kTranslations[langCode] ?? {};
    
    for (var key in kMasterKeys) {
      // If we have a specific translation, use it. Otherwise, if it's missing in file, use English master as fallback.
      if (trans.containsKey(key)) {
        json[key] = trans[key];
      } else if (!json.containsKey(key)) {
        json[key] = masterJson[key];
      }
    }

    // 3. Sort keys to keep them tidy (optional but nice)
    // 4. Save back
    const encoder = JsonEncoder.withIndent('  ');
    await file.writeAsString(encoder.convert(json));
  }
  print('Done! All languages audited and synced.');
}
