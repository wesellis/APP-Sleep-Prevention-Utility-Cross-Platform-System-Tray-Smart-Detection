package com.sleepfree.app

import android.os.Bundle
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import com.google.android.material.button.MaterialButton
import android.widget.TextView

class MainActivity : AppCompatActivity() {
    
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        
        setupUI()
    }
    
    private fun setupUI() {
        // Find views
        val getStartedButton = findViewById<MaterialButton>(R.id.getStartedButton)
        val statusText = findViewById<TextView>(R.id.statusText)
        
        // Set up button click listener
        getStartedButton.setOnClickListener {
            statusText.text = "🚀 Ready to start development! SleepFree MVP in progress..."
            Toast.makeText(this, "Welcome to SleepFree! 🌙", Toast.LENGTH_LONG).show()
        }
        
        // Welcome message
        statusText.text = "Ready to revolutionize smoking cessation! 🌟"
    }
}
