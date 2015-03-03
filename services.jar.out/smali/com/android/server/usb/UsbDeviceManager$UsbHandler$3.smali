.class Lcom/android/server/usb/UsbDeviceManager$UsbHandler$3;
.super Landroid/database/ContentObserver;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usb/UsbDeviceManager$UsbHandler;-><init>(Lcom/android/server/usb/UsbDeviceManager;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

.field final synthetic val$this$0:Lcom/android/server/usb/UsbDeviceManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Landroid/os/Handler;Lcom/android/server/usb/UsbDeviceManager;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 858
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$3;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iput-object p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$3;->val$this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .parameter "selfChange"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 861
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 862
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$3;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v4, v4, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->access$2100(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "back_pad_enable"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v1, v2

    .line 864
    .local v1, isEnable:Z
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$3;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v4, v4, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v1, :cond_1

    :goto_1
    #calls: Lcom/android/server/usb/UsbDeviceManager;->nativeSetBackpanelEnabled(I)I
    invoke-static {v4, v2}, Lcom/android/server/usb/UsbDeviceManager;->access$2500(Lcom/android/server/usb/UsbDeviceManager;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 868
    :goto_2
    return-void

    .end local v1           #isEnable:Z
    :cond_0
    move v1, v3

    .line 862
    goto :goto_0

    .restart local v1       #isEnable:Z
    :cond_1
    move v2, v3

    .line 864
    goto :goto_1

    .line 865
    :catch_0
    move-exception v0

    .line 866
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method
