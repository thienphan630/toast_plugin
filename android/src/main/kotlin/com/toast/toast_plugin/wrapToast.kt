package com.toast.toast_plugin

import android.content.Context
import android.view.LayoutInflater
import android.view.View
import android.widget.Toast


class WrapToast : Toast {
    constructor(context: Context?) : super(context)

    var SUCCESS: Int = 1
    var WARNING: Int = 2
    var ERROR: Int = 3
    var CONFUSING: Int = 4
    var SHORT: Long = 4000
    var LONG: Long = 7000

    open fun makeText(
        context: Context,
        message: String,
        duration: Int, type: Int,
        androidIcon: Boolean
    ) {
        var toast: Toast = Toast(context)
        toast.duration = duration
        var layout: View =
            LayoutInflater.from(context).inflate(R.layout.customtoast_layout, null, false)
        //TODO: CUSTOM TOAST
    }
}

