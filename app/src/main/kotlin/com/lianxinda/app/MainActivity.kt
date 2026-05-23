package com.lianxinda.app

import android.os.Build
import android.os.Bundle
import android.view.KeyEvent
import android.webkit.WebSettings
import android.webkit.WebView
import android.webkit.WebViewClient
import androidx.appcompat.app.AppCompatActivity

class MainActivity : AppCompatActivity() {
    private lateinit var webView: WebView

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        webView = findViewById(R.id.webview)
        setupWebView()
        webView.loadUrl("https://lianxinda.sbs")
    }

    private fun setupWebView() {
        webView.apply {
            // Set WebViewClient to handle navigation within the app
            webViewClient = WebViewClient()

            // Configure WebView settings
            settings.apply {
                // Enable JavaScript
                javaScriptEnabled = true

                // Enable DOM Storage
                domStorageEnabled = true

                // Enable Database Storage
                databaseEnabled = true

                // Enable mixed content (HTTP and HTTPS)
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
                    mixedContentMode = WebSettings.MIXED_CONTENT_ALWAYS_ALLOW
                }

                // Set user agent
                userAgentString = userAgentString + " XindaMall/1.0"

                // Enable caching
                cacheMode = WebSettings.LOAD_DEFAULT

                // Enable zoom
                builtInZoomControls = true
                displayZoomControls = false

                // Set font size
                defaultFontSize = 16
            }
        }
    }

    override fun onKeyDown(keyCode: Int, event: KeyEvent?): Boolean {
        // Handle back button to go back in WebView history
        if (keyCode == KeyEvent.KEYCODE_BACK && webView.canGoBack()) {
            webView.goBack()
            return true
        }
        return super.onKeyDown(keyCode, event)
    }
}
