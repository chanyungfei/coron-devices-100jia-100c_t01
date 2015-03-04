.class public Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;
.super Lcom/android/internal/policy/impl/PhoneWindowManager;
.source "PhoneWindowManagerBaidu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu$KeySettingsObserver;
    }
.end annotation


# instance fields
.field private isEnablePowerLongPressWhenLock:Z

.field private isEnableVolumeRevoke:Z

.field mCurrWin:Landroid/view/WindowManagerPolicy$WindowState;

.field private mDeviceHardwareKeys:I

.field mDisableVibration:Z

.field private mHardwareKeyLongPressActions:[Lcom/android/internal/util/ButtonHelper$Action;

.field mInterestingKeyRunnable:Ljava/lang/Runnable;

.field private mLongPressInterval:J

.field mObserver:Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu$KeySettingsObserver;

.field mPreInsterestingKey:Landroid/view/KeyEvent;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;-><init>()V

    .line 39
    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mLongPressInterval:J

    .line 40
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->isEnableVolumeRevoke:Z

    .line 41
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->isEnablePowerLongPressWhenLock:Z

    .line 48
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mDisableVibration:Z

    .line 259
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->isEnablePowerLongPressWhenLock:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->isEnableVolumeRevoke:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;[Lcom/android/internal/util/ButtonHelper$Action;)[Lcom/android/internal/util/ButtonHelper$Action;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mHardwareKeyLongPressActions:[Lcom/android/internal/util/ButtonHelper$Action;

    return-object p1
.end method

.method private readSettings()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 252
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 253
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "volume_revoke"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->isEnableVolumeRevoke:Z

    .line 254
    const-string v1, "disable_power_menu_when_lock"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v2, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->isEnablePowerLongPressWhenLock:Z

    .line 256
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/util/ButtonHelper;->getHardwareKeyLongPressAction(Landroid/content/Context;)[Lcom/android/internal/util/ButtonHelper$Action;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mHardwareKeyLongPressActions:[Lcom/android/internal/util/ButtonHelper$Action;

    .line 257
    return-void

    :cond_0
    move v1, v3

    .line 253
    goto :goto_0

    :cond_1
    move v2, v3

    .line 254
    goto :goto_1
.end method


# virtual methods
.method public getAction(I)Lcom/android/internal/util/ButtonHelper$Action;
    .locals 3
    .parameter "keyCode"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x3

    .line 77
    if-ne p1, v1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mHardwareKeyLongPressActions:[Lcom/android/internal/util/ButtonHelper$Action;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 88
    :goto_0
    return-object v0

    .line 79
    :cond_0
    if-ne p1, v2, :cond_1

    .line 80
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mHardwareKeyLongPressActions:[Lcom/android/internal/util/ButtonHelper$Action;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0

    .line 81
    :cond_1
    const/16 v0, 0x52

    if-ne p1, v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mHardwareKeyLongPressActions:[Lcom/android/internal/util/ButtonHelper$Action;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    goto :goto_0

    .line 83
    :cond_2
    const/16 v0, 0xdb

    if-eq p1, v0, :cond_3

    const/16 v0, 0x54

    if-ne p1, v0, :cond_4

    .line 84
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mHardwareKeyLongPressActions:[Lcom/android/internal/util/ButtonHelper$Action;

    aget-object v0, v0, v1

    goto :goto_0

    .line 85
    :cond_4
    const/16 v0, 0xbb

    if-ne p1, v0, :cond_5

    .line 86
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mHardwareKeyLongPressActions:[Lcom/android/internal/util/ButtonHelper$Action;

    aget-object v0, v0, v2

    goto :goto_0

    .line 88
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 3
    .parameter "context"
    .parameter "windowManager"
    .parameter "windowManagerFuncs"

    .prologue
    .line 95
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    .line 97
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:integer@config_deviceHardwareKeys#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mDeviceHardwareKeys:I

    .line 99
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->readSettings()V

    .line 100
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu$KeySettingsObserver;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu$KeySettingsObserver;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mObserver:Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu$KeySettingsObserver;

    .line 101
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mObserver:Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu$KeySettingsObserver;

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mDeviceHardwareKeys:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu$KeySettingsObserver;->startObserving(Z)V

    .line 102
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 12
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->keyguardOn()Z

    move-result v4

    .line 108
    .local v4, keyguardOn:Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 109
    .local v3, keyCode:I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    .line 110
    .local v6, repeatCount:I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    .line 111
    .local v5, metaState:I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    .line 112
    .local v2, flags:I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_2

    const/4 v1, 0x1

    .line 113
    .local v1, down:Z
    :goto_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    .line 114
    .local v0, canceled:Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    const/4 v7, 0x1

    .line 116
    .local v7, virtualKey:Z
    :goto_1
    sget-boolean v8, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->DEBUG_INPUT:Z

    if-eqz v8, :cond_0

    .line 117
    const-string v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "interceptKeyTiBaidu keyCode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " down="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " repeatCount="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " keyguardOn="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mHomePressed="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mHomePressed:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " canceled="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mCurrWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 124
    if-nez v7, :cond_9

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->isInterestingKey(I)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 125
    if-eqz v1, :cond_6

    .line 126
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mPreInsterestingKey:Landroid/view/KeyEvent;

    if-eqz v8, :cond_4

    .line 127
    sget-boolean v8, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->DEBUG_INPUT:Z

    if-eqz v8, :cond_1

    .line 128
    const-string v8, "WindowManager"

    const-string v9, "interceptKey down event again"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_1
    const-wide/16 v8, -0x1

    .line 187
    :goto_2
    return-wide v8

    .line 112
    .end local v0           #canceled:Z
    .end local v1           #down:Z
    .end local v7           #virtualKey:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 114
    .restart local v0       #canceled:Z
    .restart local v1       #down:Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 134
    .restart local v7       #virtualKey:Z
    :cond_4
    sget-boolean v8, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->DEBUG_INPUT:Z

    if-eqz v8, :cond_5

    .line 135
    const-string v8, "WindowManager"

    const-string v9, "interceptKey first down event"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_5
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mPreInsterestingKey:Landroid/view/KeyEvent;

    .line 138
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v8, v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->makeActionRunnable(Landroid/content/Context;IZ)Ljava/lang/Runnable;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mInterestingKeyRunnable:Ljava/lang/Runnable;

    .line 139
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mInterestingKeyRunnable:Ljava/lang/Runnable;

    iget-wide v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mLongPressInterval:J

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 141
    const-wide/16 v8, -0x1

    goto :goto_2

    .line 143
    :cond_6
    sget-boolean v8, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->DEBUG_INPUT:Z

    if-eqz v8, :cond_7

    .line 144
    const-string v8, "WindowManager"

    const-string v9, "interceptKey up or cancel event"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_7
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mInterestingKeyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 147
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mInterestingKeyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 148
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mInterestingKeyRunnable:Ljava/lang/Runnable;

    .line 149
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mPreInsterestingKey:Landroid/view/KeyEvent;

    .line 150
    sget-boolean v8, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->DEBUG_INPUT:Z

    if-eqz v8, :cond_8

    .line 151
    const-string v8, "WindowManager"

    const-string v9, "interceptKey short press"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_8
    sparse-switch v3, :sswitch_data_0

    .line 187
    :cond_9
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v8

    goto :goto_2

    .line 155
    :sswitch_0
    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/android/internal/util/ButtonActions;->triggerVirtualKeypress(IZZ)V

    .line 156
    const-wide/16 v8, -0x1

    goto :goto_2

    .line 159
    :sswitch_1
    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/android/internal/util/ButtonActions;->triggerVirtualKeypress(IZZ)V

    .line 160
    const-wide/16 v8, -0x1

    goto :goto_2

    .line 162
    :sswitch_2
    const/16 v8, 0x52

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/android/internal/util/ButtonActions;->triggerVirtualKeypress(IZZ)V

    .line 163
    const-wide/16 v8, -0x1

    goto :goto_2

    .line 165
    :sswitch_3
    if-nez v4, :cond_a

    .line 166
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->showOrHideRecentAppsDialog(I)V

    .line 168
    :cond_a
    const-wide/16 v8, -0x1

    goto :goto_2

    .line 170
    :sswitch_4
    const/16 v8, 0x54

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/android/internal/util/ButtonActions;->triggerVirtualKeypress(IZZ)V

    .line 171
    const-wide/16 v8, -0x1

    goto/16 :goto_2

    .line 173
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->launchAssistAction()V

    .line 174
    const-wide/16 v8, -0x1

    goto/16 :goto_2

    .line 177
    :cond_b
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mPreInsterestingKey:Landroid/view/KeyEvent;

    .line 178
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mInterestingKeyRunnable:Ljava/lang/Runnable;

    .line 179
    sget-boolean v8, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->DEBUG_INPUT:Z

    if-eqz v8, :cond_c

    .line 180
    const-string v8, "WindowManager"

    const-string v9, "interceptKey long press has handled"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_c
    const-wide/16 v8, -0x1

    goto/16 :goto_2

    .line 153
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x52 -> :sswitch_2
        0x54 -> :sswitch_4
        0xbb -> :sswitch_3
        0xdb -> :sswitch_5
    .end sparse-switch
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
    .locals 1
    .parameter "event"
    .parameter "policyFlags"
    .parameter "isScreenOn"

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mSystemBooted:Z

    if-nez v0, :cond_0

    .line 213
    const/4 v0, 0x0

    .line 216
    :goto_0
    return v0

    .line 215
    :cond_0
    invoke-virtual {p0, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->interceptKeyBeforeQueueingHook(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/KeyEvent;)V

    .line 216
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    move-result v0

    goto :goto_0
.end method

.method public interceptKeyBeforeQueueingHook(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/KeyEvent;)V
    .locals 7
    .parameter "phoneWindowManager"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 226
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_1

    move v0, v3

    .line 227
    .local v0, down:Z
    :goto_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 228
    .local v1, keyCode:I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    move v2, v3

    .line 229
    .local v2, virtualKey:Z
    :goto_1
    sparse-switch v1, :sswitch_data_0

    .line 249
    :cond_0
    :goto_2
    return-void

    .end local v0           #down:Z
    .end local v1           #keyCode:I
    .end local v2           #virtualKey:Z
    :cond_1
    move v0, v4

    .line 226
    goto :goto_0

    .restart local v0       #down:Z
    .restart local v1       #keyCode:I
    :cond_2
    move v2, v4

    .line 228
    goto :goto_1

    .line 233
    .restart local v2       #virtualKey:Z
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->wakeUpWithVolumeKey()V

    goto :goto_2

    .line 236
    :sswitch_1
    if-eqz v0, :cond_3

    .line 237
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-static {p0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->flashClose(Lcom/android/internal/policy/impl/PhoneWindowManager;I)Z

    .line 244
    :cond_3
    :sswitch_2
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 245
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mDisableVibration:Z

    goto :goto_2

    .line 229
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x4 -> :sswitch_2
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_1
        0x52 -> :sswitch_2
        0x54 -> :sswitch_2
        0xa4 -> :sswitch_0
        0xdb -> :sswitch_2
    .end sparse-switch
.end method

.method isInterestingKey(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 50
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    const/16 v0, 0xdb

    if-eq p1, v0, :cond_0

    const/16 v0, 0x54

    if-eq p1, v0, :cond_0

    const/16 v0, 0xbb

    if-ne p1, v0, :cond_1

    .line 56
    :cond_0
    const/4 v0, 0x1

    .line 58
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method makeActionRunnable(Landroid/content/Context;IZ)Ljava/lang/Runnable;
    .locals 1
    .parameter "context"
    .parameter "keyCode"
    .parameter "isKeyguardOn"

    .prologue
    .line 62
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu$1;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;ZILandroid/content/Context;)V

    .line 73
    .local v0, runnable:Ljava/lang/Runnable;
    return-object v0
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .locals 2
    .parameter "win"
    .parameter "effectId"
    .parameter "always"

    .prologue
    const/4 v0, 0x0

    .line 191
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mDisableVibration:Z

    if-eqz v1, :cond_0

    .line 192
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mDisableVibration:Z

    .line 195
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    move-result v0

    goto :goto_0
.end method

.method showGlobalActionsDialog()V
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->isEnablePowerLongPressWhenLock:Z

    if-nez v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showGlobalActionsDialog()V

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showGlobalActionsDialog()V

    goto :goto_0
.end method

.method public wakeUpWithVolumeKey()V
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->isEnableVolumeRevoke:Z

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->wakeUp()V

    .line 223
    :cond_0
    return-void
.end method
