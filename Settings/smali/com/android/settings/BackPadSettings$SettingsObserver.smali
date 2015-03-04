.class Lcom/android/settings/BackPadSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BackPadSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/BackPadSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/settings/BackPadSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/BackPadSettings;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 404
    iput-object p1, p0, Lcom/android/settings/BackPadSettings$SettingsObserver;->this$0:Lcom/android/settings/BackPadSettings;

    .line 405
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 406
    iput-object p3, p0, Lcom/android/settings/BackPadSettings$SettingsObserver;->mContext:Landroid/content/Context;

    .line 407
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v0, 0x1

    .line 421
    iget-object v1, p0, Lcom/android/settings/BackPadSettings$SettingsObserver;->this$0:Lcom/android/settings/BackPadSettings;

    iget-object v2, p0, Lcom/android/settings/BackPadSettings$SettingsObserver;->this$0:Lcom/android/settings/BackPadSettings;

    invoke-virtual {v2}, Lcom/android/settings/BackPadSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "back_pad_enable"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    #setter for: Lcom/android/settings/BackPadSettings;->mBackPadEnable:Z
    invoke-static {v1, v0}, Lcom/android/settings/BackPadSettings;->access$102(Lcom/android/settings/BackPadSettings;Z)Z

    .line 423
    iget-object v0, p0, Lcom/android/settings/BackPadSettings$SettingsObserver;->this$0:Lcom/android/settings/BackPadSettings;

    iget-object v0, v0, Lcom/android/settings/BackPadSettings;->mEnablePref:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/BackPadSettings$SettingsObserver;->this$0:Lcom/android/settings/BackPadSettings;

    #getter for: Lcom/android/settings/BackPadSettings;->mBackPadEnable:Z
    invoke-static {v1}, Lcom/android/settings/BackPadSettings;->access$100(Lcom/android/settings/BackPadSettings;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 424
    iget-object v0, p0, Lcom/android/settings/BackPadSettings$SettingsObserver;->this$0:Lcom/android/settings/BackPadSettings;

    iget-object v1, p0, Lcom/android/settings/BackPadSettings$SettingsObserver;->this$0:Lcom/android/settings/BackPadSettings;

    #getter for: Lcom/android/settings/BackPadSettings;->mBackPadEnable:Z
    invoke-static {v1}, Lcom/android/settings/BackPadSettings;->access$100(Lcom/android/settings/BackPadSettings;)Z

    move-result v1

    #calls: Lcom/android/settings/BackPadSettings;->setPrefsEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/BackPadSettings;->access$200(Lcom/android/settings/BackPadSettings;Z)V

    .line 425
    return-void

    .line 421
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method startObserving()V
    .locals 3

    .prologue
    .line 410
    iget-object v1, p0, Lcom/android/settings/BackPadSettings$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 411
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "back_pad_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 413
    return-void
.end method

.method stopObserving()V
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/settings/BackPadSettings$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 417
    return-void
.end method
