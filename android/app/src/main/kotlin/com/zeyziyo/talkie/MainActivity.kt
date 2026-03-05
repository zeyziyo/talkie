package com.zeyziyo.talkie

import android.content.Intent
import android.media.AudioManager
import android.os.Bundle
import android.provider.Settings
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {
    private val CHANNEL = "com.zeyziyo.talkie/settings"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        // 음성 볼륨 컨트롤을 미디어 스트림으로 고정
        volumeControlStream = AudioManager.STREAM_MUSIC
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            if (call.method == "openTtsSettings") {
                try {
                    val intent = Intent(Settings.ACTION_TTS_SETTINGS)
                    intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                    startActivity(intent)
                    result.success(true)
                } catch (e: Exception) {
                    result.error("UNAVAILABLE", "Could not open TTS settings: ${e.message}", null)
                }
            } else {
                result.notImplemented()
            }
        }
    }
}
