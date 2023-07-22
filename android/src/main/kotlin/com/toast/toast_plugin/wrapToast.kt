package com.toast.toast_plugin

import android.content.Context
import android.view.LayoutInflater
import android.view.View
import android.widget.LinearLayout
import android.widget.TextView
import android.widget.Toast


open class WrapToast(context: Context?) : Toast(context) {

    companion object {
        var SUCCESS: Int = 2
        var WARNING: Int = 2
        var ERROR: Int = 3


        fun makeText(context: Context, message: String, type: String): Toast {
            val toast = Toast(context)

            val layout: View =
                LayoutInflater.from(context).inflate(R.layout.customtoast_layout, null, false)
            val linearLayout: LinearLayout = layout.findViewById(R.id.toast_type)

            when (type) {
                "SUCCESS" -> {
                    toast.duration = SUCCESS
                    linearLayout.setBackgroundResource(R.drawable.success_shape)
                }

                "WARNING" -> {
                    toast.duration = WARNING
                    linearLayout.setBackgroundResource(R.drawable.warning_shape)
                }

                "ERROR" -> {
                    toast.duration = ERROR
                    linearLayout.setBackgroundResource(R.drawable.error_shape)
                }
            }


            val text: TextView = layout.findViewById(R.id.toast_text)
            text.text = message
            toast.view = layout
            return toast
        }
    }
}

