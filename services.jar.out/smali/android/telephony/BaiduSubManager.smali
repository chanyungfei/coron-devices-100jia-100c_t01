.class public Landroid/telephony/BaiduSubManager;
.super Landroid/os/Handler;
.source "BaiduSubManager.java"


# static fields
.field private static final CDMA_MODE:I = 0x0

.field private static final DBG:Z = true

.field private static final EVENT_DUAL_SIM_MODE_CHANGED_COMPLETE:I = 0x1

.field private static final EVENT_TIME_OUT:I = 0x7d1

.field private static final GET_SIM_RETRY_EMPTY:I = -0x64

.field private static final GSM_MODE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "BaiduSubManager"

.field private static final MAX_SUBSCRIPTIONS:I = 0x2

.field private static final SLOT_0:I = 0x0

.field private static final SLOT_1:I = 0x1

.field private static final SUB_0:I = 0x0

.field private static final SUB_1:I = 0x1

.field private static final TIME_OUT_LENGTH:I = 0x7530

.field private static sBaiduSubManager:Landroid/telephony/BaiduSubManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataConnectionReceiver:Landroid/content/BroadcastReceiver;

.field private mDataSubscription:I

.field private mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mMessenger:Landroid/os/Messenger;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSetDataSubscriptionMsg:Landroid/os/Message;

.field private mSetSlotActiveMsg:Landroid/os/Message;

.field private mSetSlotModeMsg:Landroid/os/Message;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 70
    iput-object v0, p0, Landroid/telephony/BaiduSubManager;->mSetSlotActiveMsg:Landroid/os/Message;

    .line 71
    iput-object v0, p0, Landroid/telephony/BaiduSubManager;->mSetSlotModeMsg:Landroid/os/Message;

    .line 72
    iput-object v0, p0, Landroid/telephony/BaiduSubManager;->mSetDataSubscriptionMsg:Landroid/os/Message;

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/BaiduSubManager;->mDataSubscription:I

    .line 126
    new-instance v0, Landroid/telephony/BaiduSubManager$1;

    invoke-direct {v0, p0}, Landroid/telephony/BaiduSubManager$1;-><init>(Landroid/telephony/BaiduSubManager;)V

    iput-object v0, p0, Landroid/telephony/BaiduSubManager;->mDataConnectionReceiver:Landroid/content/BroadcastReceiver;

    .line 102
    const-string v0, "BaiduSubManager"

    const-string v1, "Constructor - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iput-object p1, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    .line 105
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/telephony/BaiduSubManager;->mMessenger:Landroid/os/Messenger;

    .line 106
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/telephony/BaiduSubManager;->mIntentFilter:Landroid/content/IntentFilter;

    .line 107
    iget-object v0, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/telephony/BaiduSubManager;->mDataConnectionReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroid/telephony/BaiduSubManager;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v0, p0, Landroid/telephony/BaiduSubManager;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 111
    iget-object v0, p0, Landroid/telephony/BaiduSubManager;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-nez v0, :cond_0

    .line 112
    const-string v0, "BaiduSubManager"

    const-string v1, "mGeminiPhone == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    const-string v0, "BaiduSubManager"

    const-string v1, "Constructor - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void
.end method

.method static synthetic access$000(Landroid/telephony/BaiduSubManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Landroid/telephony/BaiduSubManager;->mDataSubscription:I

    return v0
.end method

.method static synthetic access$100(Landroid/telephony/BaiduSubManager;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Landroid/telephony/BaiduSubManager;->mSetDataSubscriptionMsg:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$102(Landroid/telephony/BaiduSubManager;Landroid/os/Message;)Landroid/os/Message;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Landroid/telephony/BaiduSubManager;->mSetDataSubscriptionMsg:Landroid/os/Message;

    return-object p1
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 231
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/telephony/BaiduSubManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 84
    const-string v0, "BaiduSubManager"

    const-string v1, "getInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    sget-object v0, Landroid/telephony/BaiduSubManager;->sBaiduSubManager:Landroid/telephony/BaiduSubManager;

    if-nez v0, :cond_1

    .line 87
    if-nez p0, :cond_0

    .line 88
    const-string v0, "BaiduSubManager"

    const-string v1, "sBaiduSubManager == null, context == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v0, 0x0

    .line 93
    :goto_0
    return-object v0

    .line 91
    :cond_0
    new-instance v0, Landroid/telephony/BaiduSubManager;

    invoke-direct {v0, p0}, Landroid/telephony/BaiduSubManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/telephony/BaiduSubManager;->sBaiduSubManager:Landroid/telephony/BaiduSubManager;

    .line 93
    :cond_1
    sget-object v0, Landroid/telephony/BaiduSubManager;->sBaiduSubManager:Landroid/telephony/BaiduSubManager;

    goto :goto_0
.end method


# virtual methods
.method public changeIccLockPassword(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .parameter "subscription"
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onCompleteMsg"

    .prologue
    .line 987
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    if-ne v2, p1, :cond_4

    .line 989
    :cond_0
    const-string v2, "BaiduSubManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeIccLockPassword, subscription = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    iget-object v2, p0, Landroid/telephony/BaiduSubManager;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-nez v2, :cond_1

    .line 992
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v2, p0, Landroid/telephony/BaiduSubManager;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 994
    :cond_1
    iget-object v2, p0, Landroid/telephony/BaiduSubManager;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-nez v2, :cond_3

    .line 995
    const-string v2, "BaiduSubManager"

    const-string v3, "mGeminiPhone == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    if-eqz p4, :cond_2

    .line 997
    const/4 v1, 0x0

    .line 998
    .local v1, result:Z
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "mGeminiPhone == null"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 999
    .local v0, exception:Ljava/lang/RuntimeException;
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p4, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1000
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 1015
    .end local v0           #exception:Ljava/lang/RuntimeException;
    .end local v1           #result:Z
    :cond_2
    :goto_0
    return-void

    .line 1003
    :cond_3
    iget-object v2, p0, Landroid/telephony/BaiduSubManager;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2, p2, p3, p4}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 1006
    :cond_4
    const-string v2, "BaiduSubManager"

    const-string v3, "subscription error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    if-eqz p4, :cond_2

    .line 1008
    const/4 v1, 0x0

    .line 1009
    .restart local v1       #result:Z
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "subscription error"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1010
    .restart local v0       #exception:Ljava/lang/RuntimeException;
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p4, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1011
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public getDataRoamingEnabled(I)Z
    .locals 9
    .parameter "subscription"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 781
    if-eqz p1, :cond_1

    if-eq p1, v4, :cond_1

    .line 782
    const-string v4, "BaiduSubManager"

    const-string v6, "subscription error"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :cond_0
    :goto_0
    return v5

    .line 786
    :cond_1
    :try_start_0
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 789
    .local v1, resolver:Landroid/content/ContentResolver;
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    .line 790
    .local v2, simInfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v2, :cond_0

    .line 791
    iget v0, v2, Landroid/provider/Telephony$SIMInfo;->mDataRoaming:I

    .line 793
    .local v0, dataRoaming:I
    const-string v6, "BaiduSubManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dataRoaming = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 795
    if-ne v0, v4, :cond_2

    :goto_1
    move v5, v4

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    .line 808
    .end local v0           #dataRoaming:I
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v2           #simInfo:Landroid/provider/Telephony$SIMInfo;
    :catch_0
    move-exception v3

    .line 809
    .local v3, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method public getMmsRoamingEnabled(I)Z
    .locals 9
    .parameter "subscription"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 833
    if-eqz p1, :cond_1

    if-eq p1, v4, :cond_1

    .line 834
    const-string v4, "BaiduSubManager"

    const-string v6, "subscription error"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :cond_0
    :goto_0
    return v5

    .line 838
    :cond_1
    :try_start_0
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 841
    .local v1, resolver:Landroid/content/ContentResolver;
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    .line 842
    .local v2, simInfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v2, :cond_0

    .line 843
    iget v0, v2, Landroid/provider/Telephony$SIMInfo;->mDataRoaming:I

    .line 845
    .local v0, dataRoaming:I
    const-string v6, "BaiduSubManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dataRoaming = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 847
    if-ne v0, v4, :cond_2

    :goto_1
    move v5, v4

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    .line 860
    .end local v0           #dataRoaming:I
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v2           #simInfo:Landroid/provider/Telephony$SIMInfo;
    :catch_0
    move-exception v3

    .line 861
    .local v3, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method public getRetryPin1Count(I)I
    .locals 2
    .parameter "subscription"

    .prologue
    const/16 v1, -0x64

    .line 1027
    if-nez p1, :cond_0

    .line 1028
    const-string v0, "gsm.sim.retry.pin1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1033
    :goto_0
    return v0

    .line 1029
    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 1030
    const-string v0, "gsm.sim.retry.pin1.2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 1032
    :cond_1
    const-string v0, "BaiduSubManager"

    const-string v1, "getRetryPin1Count subscription error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSlotActive(I)Z
    .locals 6
    .parameter "slot"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 596
    if-eqz p1, :cond_1

    if-eq p1, v2, :cond_1

    .line 597
    const-string v2, "BaiduSubManager"

    const-string v3, "slot error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_0
    :goto_0
    return v1

    .line 600
    :cond_1
    invoke-virtual {p0, p1}, Landroid/telephony/BaiduSubManager;->isCardInsert(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 601
    const-string v2, "BaiduSubManager"

    const-string v3, "no card in slot"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 604
    :cond_2
    iget-object v3, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dual_sim_mode_setting"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 605
    .local v0, dualSimMode:I
    const/4 v3, 0x3

    if-ne v3, v0, :cond_3

    move v1, v2

    .line 606
    goto :goto_0

    .line 607
    :cond_3
    if-ne v2, v0, :cond_4

    if-nez p1, :cond_4

    move v1, v2

    .line 608
    goto :goto_0

    .line 609
    :cond_4
    const/4 v3, 0x2

    if-ne v3, v0, :cond_0

    if-ne v2, p1, :cond_0

    move v1, v2

    .line 610
    goto :goto_0
.end method

.method public getSlotMode(I)I
    .locals 3
    .parameter "slot"

    .prologue
    const/4 v2, 0x1

    .line 669
    if-eqz p1, :cond_1

    if-eq p1, v2, :cond_1

    .line 670
    const-string v0, "BaiduSubManager"

    const-string v1, "slot error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_0
    :goto_0
    return v2

    .line 673
    :cond_1
    invoke-virtual {p0, p1}, Landroid/telephony/BaiduSubManager;->isCardInsert(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 674
    const-string v0, "BaiduSubManager"

    const-string v1, "no card in slot"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, -0x1

    .line 161
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 165
    :sswitch_0
    const-string v7, "BaiduSubManager"

    const-string v8, "EVENT_DUAL_SIM_MODE_CHANGED_COMPLETE"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduSubManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v7

    iget-object v8, p0, Landroid/telephony/BaiduSubManager;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v8}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/android/internal/telephony/ITelephony;->unregisterForSimModeChange(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 175
    :goto_1
    iget-object v7, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/telephony/BaiduTelephonyUtils;->getPreferredVoiceSlot(Landroid/content/Context;)I

    move-result v5

    .line 176
    .local v5, preferedVoiceSlot:I
    iget-object v7, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/telephony/BaiduTelephonyUtils;->getPreferredSmsSlot(Landroid/content/Context;)I

    move-result v4

    .line 177
    .local v4, preferedSmsSlot:I
    iget-object v7, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/telephony/BaiduTelephonyUtils;->getPreferredDataSlot(Landroid/content/Context;)I

    move-result v3

    .line 179
    .local v3, preferedDataSlot:I
    iget-object v7, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "dual_sim_mode_setting"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 181
    .local v0, dualSimMode:I
    const-string v7, "BaiduSubManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "preferedVoiceSlot = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", preferedSmsSlot = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", preferedDataSlot = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string v7, "BaiduSubManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dualSimMode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    if-eq v5, v10, :cond_1

    add-int v7, v5, v0

    if-ne v7, v11, :cond_1

    .line 187
    iget-object v7, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    rsub-int/lit8 v8, v5, 0x1

    invoke-static {v7, v8}, Landroid/telephony/BaiduTelephonyUtils;->setPreferredVoiceSlot(Landroid/content/Context;I)V

    .line 191
    :cond_1
    if-eq v4, v10, :cond_2

    add-int v7, v4, v0

    if-ne v7, v11, :cond_2

    .line 192
    iget-object v7, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    rsub-int/lit8 v8, v4, 0x1

    invoke-static {v7, v8}, Landroid/telephony/BaiduTelephonyUtils;->setPreferredSmsSlot(Landroid/content/Context;I)V

    .line 196
    :cond_2
    if-eq v3, v10, :cond_3

    add-int v7, v3, v0

    if-ne v7, v11, :cond_3

    .line 197
    rsub-int/lit8 v7, v3, 0x1

    invoke-virtual {p0, v7, v12}, Landroid/telephony/BaiduSubManager;->setDataSubscription(ILandroid/os/Message;)V

    .line 204
    :cond_3
    iget-object v7, p0, Landroid/telephony/BaiduSubManager;->mSetSlotActiveMsg:Landroid/os/Message;

    if-eqz v7, :cond_0

    .line 205
    const/4 v6, 0x1

    .line 206
    .local v6, result:Z
    const/4 v2, 0x0

    .line 207
    .local v2, exception:Ljava/lang/RuntimeException;
    iget-object v7, p0, Landroid/telephony/BaiduSubManager;->mSetSlotActiveMsg:Landroid/os/Message;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 208
    iget-object v7, p0, Landroid/telephony/BaiduSubManager;->mSetSlotActiveMsg:Landroid/os/Message;

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 209
    iput-object v12, p0, Landroid/telephony/BaiduSubManager;->mSetSlotActiveMsg:Landroid/os/Message;

    goto/16 :goto_0

    .line 169
    .end local v0           #dualSimMode:I
    .end local v2           #exception:Ljava/lang/RuntimeException;
    .end local v3           #preferedDataSlot:I
    .end local v4           #preferedSmsSlot:I
    .end local v5           #preferedVoiceSlot:I
    .end local v6           #result:Z
    :catch_0
    move-exception v1

    .line 170
    .local v1, ex:Landroid/os/RemoteException;
    const-string v7, "BaiduSubManager"

    const-string v8, "RemoteException ex"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 171
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 172
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v7, "BaiduSubManager"

    const-string v8, "NullPointerException ex"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 216
    .end local v1           #ex:Ljava/lang/NullPointerException;
    :sswitch_1
    const-string v7, "BaiduSubManager"

    const-string v8, "setDataSubscription timeout"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v7, p0, Landroid/telephony/BaiduSubManager;->mSetDataSubscriptionMsg:Landroid/os/Message;

    if-eqz v7, :cond_0

    .line 219
    const/4 v6, 0x0

    .line 220
    .restart local v6       #result:Z
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v7, "setDataSubscription timeout"

    invoke-direct {v2, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 221
    .restart local v2       #exception:Ljava/lang/RuntimeException;
    iget-object v7, p0, Landroid/telephony/BaiduSubManager;->mSetDataSubscriptionMsg:Landroid/os/Message;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 222
    iget-object v7, p0, Landroid/telephony/BaiduSubManager;->mSetDataSubscriptionMsg:Landroid/os/Message;

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 223
    iput-object v12, p0, Landroid/telephony/BaiduSubManager;->mSetDataSubscriptionMsg:Landroid/os/Message;

    goto/16 :goto_0

    .line 161
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7d1 -> :sswitch_1
    .end sparse-switch
.end method

.method public isCardInsert(I)Z
    .locals 4
    .parameter "slot"

    .prologue
    const/4 v1, 0x0

    .line 241
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    .line 242
    const-string v2, "BaiduSubManager"

    const-string v3, "slot error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :goto_0
    return v1

    .line 247
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduSubManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BaiduSubManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isIccLockEnabled(I)Z
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 884
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne v0, p1, :cond_3

    .line 885
    :cond_0
    iget-object v0, p0, Landroid/telephony/BaiduSubManager;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-nez v0, :cond_1

    .line 886
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v0, p0, Landroid/telephony/BaiduSubManager;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 888
    :cond_1
    iget-object v0, p0, Landroid/telephony/BaiduSubManager;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-nez v0, :cond_2

    .line 889
    const-string v0, "BaiduSubManager"

    const-string v2, "mGeminiPhone == null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 896
    :goto_0
    return v0

    .line 892
    :cond_2
    iget-object v0, p0, Landroid/telephony/BaiduSubManager;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v0

    goto :goto_0

    .line 895
    :cond_3
    const-string v0, "BaiduSubManager"

    const-string v2, "subscription error"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 896
    goto :goto_0
.end method

.method public setDataRoamingEnabled(IZ)V
    .locals 8
    .parameter "subscription"
    .parameter "enable"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 752
    if-eqz p1, :cond_1

    if-eq p1, v3, :cond_1

    .line 753
    const-string v2, "BaiduSubManager"

    const-string v3, "subscription error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_0
    :goto_0
    return-void

    .line 756
    :cond_1
    invoke-virtual {p0, p1}, Landroid/telephony/BaiduSubManager;->getDataRoamingEnabled(I)Z

    move-result v2

    if-eq v2, p2, :cond_0

    .line 758
    iget-object v2, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v1

    .line 759
    .local v1, simInfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v1, :cond_2

    .line 760
    iget-object v5, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_3

    move v2, v3

    :goto_1
    iget-wide v6, v1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v5, v2, v6, v7}, Landroid/provider/Telephony$SIMInfo;->setDataRoaming(Landroid/content/Context;IJ)I

    move-result v2

    if-gtz v2, :cond_2

    .line 761
    const-string v2, "BaiduSubManager"

    const-string v5, "Can\'t set data romaing in database"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_2
    iget-object v2, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 766
    .local v0, resolver:Landroid/content/ContentResolver;
    if-ne p1, v3, :cond_5

    .line 767
    const-string v2, "data_roaming_2"

    if-eqz p2, :cond_4

    :goto_2
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .end local v0           #resolver:Landroid/content/ContentResolver;
    :cond_3
    move v2, v4

    .line 760
    goto :goto_1

    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :cond_4
    move v3, v4

    .line 767
    goto :goto_2

    .line 769
    :cond_5
    const-string v2, "data_roaming"

    if-eqz p2, :cond_6

    :goto_3
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_6
    move v3, v4

    goto :goto_3
.end method

.method public setDataSubscription(ILandroid/os/Message;)V
    .locals 12
    .parameter "subscription"
    .parameter "onCompleteMsg"

    .prologue
    .line 690
    const/4 v7, 0x1

    .line 693
    .local v7, result:Z
    if-eqz p1, :cond_1

    const/4 v8, 0x1

    if-eq p1, v8, :cond_1

    .line 694
    const-string v8, "BaiduSubManager"

    const-string v9, "subscription error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    if-eqz p2, :cond_0

    .line 696
    const/4 v7, 0x0

    .line 697
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v8, "subscription error"

    invoke-direct {v2, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 698
    .local v2, exception:Ljava/lang/RuntimeException;
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {p2, v8, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 699
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 743
    .end local v2           #exception:Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void

    .line 704
    :cond_1
    invoke-virtual {p0, p1}, Landroid/telephony/BaiduSubManager;->isCardInsert(I)Z

    move-result v8

    if-nez v8, :cond_2

    .line 705
    const-string v8, "BaiduSubManager"

    const-string v9, "no card in slot"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    if-eqz p2, :cond_0

    .line 707
    const/4 v7, 0x0

    .line 708
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v8, "no card in slot"

    invoke-direct {v2, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 709
    .restart local v2       #exception:Ljava/lang/RuntimeException;
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {p2, v8, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 710
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 715
    .end local v2           #exception:Ljava/lang/RuntimeException;
    :cond_2
    const-wide/16 v5, -0x5

    .line 716
    .local v5, newGprsValue:J
    iget-object v8, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-static {v8, p1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v3

    .line 717
    .local v3, gprsSimInfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v3, :cond_3

    .line 718
    iget-wide v5, v3, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    .line 720
    :cond_3
    iget-object v8, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "gprs_connection_sim_setting"

    const-wide/16 v10, -0x5

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 723
    .local v0, GprsValue:J
    cmp-long v8, v5, v0

    if-nez v8, :cond_4

    .line 725
    const-string v8, "BaiduSubManager"

    const-string v9, "newGprsvalue == GprsValue"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    if-eqz p2, :cond_0

    .line 728
    const/4 v7, 0x1

    .line 729
    const/4 v2, 0x0

    .line 730
    .restart local v2       #exception:Ljava/lang/RuntimeException;
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {p2, v8, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 731
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 736
    .end local v2           #exception:Ljava/lang/RuntimeException;
    :cond_4
    iput-object p2, p0, Landroid/telephony/BaiduSubManager;->mSetDataSubscriptionMsg:Landroid/os/Message;

    .line 737
    iput p1, p0, Landroid/telephony/BaiduSubManager;->mDataSubscription:I

    .line 739
    const/16 v8, 0x7d1

    const-wide/16 v9, 0x7530

    invoke-virtual {p0, v8, v9, v10}, Landroid/telephony/BaiduSubManager;->sendEmptyMessageDelayed(IJ)Z

    .line 740
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.DATA_DEFAULT_SIM"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 741
    .local v4, intent:Landroid/content/Intent;
    const-string v8, "simid"

    invoke-virtual {v4, v8, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 742
    iget-object v8, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public setIccLockEnabled(IZLjava/lang/String;Landroid/os/Message;)V
    .locals 5
    .parameter "subscription"
    .parameter "enable"
    .parameter "password"
    .parameter "onCompleteMsg"

    .prologue
    .line 929
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    if-ne v2, p1, :cond_4

    .line 931
    :cond_0
    const-string v2, "BaiduSubManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setIccLockEnabled, subscription = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    iget-object v2, p0, Landroid/telephony/BaiduSubManager;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-nez v2, :cond_1

    .line 934
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v2, p0, Landroid/telephony/BaiduSubManager;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 936
    :cond_1
    iget-object v2, p0, Landroid/telephony/BaiduSubManager;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-nez v2, :cond_3

    .line 937
    const-string v2, "BaiduSubManager"

    const-string v3, "mGeminiPhone == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    if-eqz p4, :cond_2

    .line 939
    const/4 v1, 0x0

    .line 940
    .local v1, result:Z
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "mGeminiPhone == null"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 941
    .local v0, exception:Ljava/lang/RuntimeException;
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p4, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 942
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 957
    .end local v0           #exception:Ljava/lang/RuntimeException;
    .end local v1           #result:Z
    :cond_2
    :goto_0
    return-void

    .line 945
    :cond_3
    iget-object v2, p0, Landroid/telephony/BaiduSubManager;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2, p2, p3, p4}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 948
    :cond_4
    const-string v2, "BaiduSubManager"

    const-string v3, "subscription error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    if-eqz p4, :cond_2

    .line 950
    const/4 v1, 0x0

    .line 951
    .restart local v1       #result:Z
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "subscription error"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 952
    .restart local v0       #exception:Ljava/lang/RuntimeException;
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p4, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 953
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setMmsRoamingEnabled(IZ)V
    .locals 2
    .parameter "subscription"
    .parameter "enable"

    .prologue
    .line 821
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 822
    const-string v0, "BaiduSubManager"

    const-string v1, "subscription error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :cond_0
    return-void
.end method

.method public setSlotActive(IZLandroid/os/Message;)V
    .locals 10
    .parameter "slot"
    .parameter "active"
    .parameter "onCompleteMsg"

    .prologue
    .line 266
    const/4 v5, 0x0

    .line 269
    .local v5, result:Z
    if-eqz p1, :cond_1

    const/4 v6, 0x1

    if-eq p1, v6, :cond_1

    .line 270
    const-string v6, "BaiduSubManager"

    const-string v7, "slot error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    if-eqz p3, :cond_0

    .line 272
    const/4 v5, 0x0

    .line 273
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v6, "slot error"

    invoke-direct {v2, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 274
    .local v2, exception:Ljava/lang/RuntimeException;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p3, v6, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 275
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 587
    .end local v2           #exception:Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    invoke-virtual {p0, p1}, Landroid/telephony/BaiduSubManager;->isCardInsert(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 281
    const-string v6, "BaiduSubManager"

    const-string v7, "no card in slot"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    if-eqz p3, :cond_0

    .line 283
    const/4 v5, 0x0

    .line 284
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v6, "no card in slot"

    invoke-direct {v2, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 285
    .restart local v2       #exception:Ljava/lang/RuntimeException;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p3, v6, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 286
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 291
    .end local v2           #exception:Ljava/lang/RuntimeException;
    :cond_2
    if-nez p1, :cond_3

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {p0, v6}, Landroid/telephony/BaiduSubManager;->isCardInsert(I)Z

    move-result v4

    .line 292
    .local v4, isOtherCardInsert:Z
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    const/4 v8, -0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 294
    .local v0, dualSimMode:I
    const-string v6, "BaiduSubManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSlotActive: slot = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", active = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", dualSimMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isOtherCardInsert = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iput-object p3, p0, Landroid/telephony/BaiduSubManager;->mSetSlotActiveMsg:Landroid/os/Message;

    .line 300
    if-eqz p2, :cond_b

    .line 301
    const/4 v6, 0x1

    iget-object v7, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "airplane_mode_on"

    const/4 v9, -0x1

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v6, v7, :cond_5

    .line 303
    const-string v6, "BaiduSubManager"

    const-string v7, "airplane mode on, turn off it"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduSubManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    iget-object v7, p0, Landroid/telephony/BaiduSubManager;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v7}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lcom/android/internal/telephony/ITelephony;->registerForSimModeChange(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 312
    :goto_2
    if-nez p1, :cond_4

    .line 313
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 314
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 315
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 316
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "state"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 317
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 291
    .end local v0           #dualSimMode:I
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #isOtherCardInsert:Z
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 307
    .restart local v0       #dualSimMode:I
    .restart local v4       #isOtherCardInsert:Z
    :catch_0
    move-exception v1

    .line 308
    .local v1, ex:Landroid/os/RemoteException;
    const-string v6, "BaiduSubManager"

    const-string v7, "RemoteException ex"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 309
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 310
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v6, "BaiduSubManager"

    const-string v7, "NullPointerException ex"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 319
    .end local v1           #ex:Ljava/lang/NullPointerException;
    :cond_4
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 320
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    const/4 v8, 0x2

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 321
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 322
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "state"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 323
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 328
    .end local v3           #intent:Landroid/content/Intent;
    :cond_5
    packed-switch v0, :pswitch_data_0

    .line 438
    const-string v6, "BaiduSubManager"

    const-string v7, "unknown dual card mode"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    if-eqz p3, :cond_0

    .line 441
    const/4 v5, 0x0

    .line 442
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v6, "unknown dual card mode"

    invoke-direct {v2, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 443
    .restart local v2       #exception:Ljava/lang/RuntimeException;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p3, v6, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 444
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 445
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/telephony/BaiduSubManager;->mSetSlotActiveMsg:Landroid/os/Message;

    goto/16 :goto_0

    .line 332
    .end local v2           #exception:Ljava/lang/RuntimeException;
    :pswitch_0
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/BaiduSubManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    iget-object v7, p0, Landroid/telephony/BaiduSubManager;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v7}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lcom/android/internal/telephony/ITelephony;->registerForSimModeChange(Landroid/os/IBinder;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    .line 338
    :goto_3
    if-nez p1, :cond_6

    .line 339
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 340
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 341
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "mode"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 342
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 333
    .end local v3           #intent:Landroid/content/Intent;
    :catch_2
    move-exception v1

    .line 334
    .local v1, ex:Landroid/os/RemoteException;
    const-string v6, "BaiduSubManager"

    const-string v7, "RemoteException ex"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 335
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_3
    move-exception v1

    .line 336
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v6, "BaiduSubManager"

    const-string v7, "NullPointerException ex"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 344
    .end local v1           #ex:Ljava/lang/NullPointerException;
    :cond_6
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    const/4 v8, 0x2

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 345
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 346
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "mode"

    const/4 v7, 0x2

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 347
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 353
    .end local v3           #intent:Landroid/content/Intent;
    :pswitch_1
    const/4 v6, 0x1

    if-ne p1, v6, :cond_8

    .line 355
    :try_start_2
    invoke-direct {p0}, Landroid/telephony/BaiduSubManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    iget-object v7, p0, Landroid/telephony/BaiduSubManager;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v7}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lcom/android/internal/telephony/ITelephony;->registerForSimModeChange(Landroid/os/IBinder;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_5

    .line 361
    :goto_4
    if-eqz v4, :cond_7

    .line 362
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    const/4 v8, 0x3

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 363
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 364
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "mode"

    const/4 v7, 0x3

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 365
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 356
    .end local v3           #intent:Landroid/content/Intent;
    :catch_4
    move-exception v1

    .line 357
    .local v1, ex:Landroid/os/RemoteException;
    const-string v6, "BaiduSubManager"

    const-string v7, "RemoteException ex"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 358
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_5
    move-exception v1

    .line 359
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v6, "BaiduSubManager"

    const-string v7, "NullPointerException ex"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 367
    .end local v1           #ex:Ljava/lang/NullPointerException;
    :cond_7
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    const/4 v8, 0x2

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 368
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 369
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "mode"

    const/4 v7, 0x2

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 370
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 374
    .end local v3           #intent:Landroid/content/Intent;
    :cond_8
    const-string v6, "BaiduSubManager"

    const-string v7, "slot already active"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    if-eqz p3, :cond_0

    .line 377
    const/4 v5, 0x1

    .line 378
    const/4 v2, 0x0

    .line 379
    .restart local v2       #exception:Ljava/lang/RuntimeException;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p3, v6, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 380
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 381
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/telephony/BaiduSubManager;->mSetSlotActiveMsg:Landroid/os/Message;

    goto/16 :goto_0

    .line 388
    .end local v2           #exception:Ljava/lang/RuntimeException;
    :pswitch_2
    if-nez p1, :cond_a

    .line 390
    :try_start_3
    invoke-direct {p0}, Landroid/telephony/BaiduSubManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    iget-object v7, p0, Landroid/telephony/BaiduSubManager;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v7}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lcom/android/internal/telephony/ITelephony;->registerForSimModeChange(Landroid/os/IBinder;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_7

    .line 396
    :goto_5
    if-eqz v4, :cond_9

    .line 397
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    const/4 v8, 0x3

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 398
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 399
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "mode"

    const/4 v7, 0x3

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 400
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 391
    .end local v3           #intent:Landroid/content/Intent;
    :catch_6
    move-exception v1

    .line 392
    .local v1, ex:Landroid/os/RemoteException;
    const-string v6, "BaiduSubManager"

    const-string v7, "RemoteException ex"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 393
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_7
    move-exception v1

    .line 394
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v6, "BaiduSubManager"

    const-string v7, "NullPointerException ex"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 402
    .end local v1           #ex:Ljava/lang/NullPointerException;
    :cond_9
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 403
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 404
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "mode"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 405
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 409
    .end local v3           #intent:Landroid/content/Intent;
    :cond_a
    const-string v6, "BaiduSubManager"

    const-string v7, "slot already active"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    if-eqz p3, :cond_0

    .line 412
    const/4 v5, 0x1

    .line 413
    const/4 v2, 0x0

    .line 414
    .restart local v2       #exception:Ljava/lang/RuntimeException;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p3, v6, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 415
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 416
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/telephony/BaiduSubManager;->mSetSlotActiveMsg:Landroid/os/Message;

    goto/16 :goto_0

    .line 424
    .end local v2           #exception:Ljava/lang/RuntimeException;
    :pswitch_3
    const-string v6, "BaiduSubManager"

    const-string v7, "already in dual card mode, no need to active any"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    if-eqz p3, :cond_0

    .line 427
    const/4 v5, 0x1

    .line 428
    const/4 v2, 0x0

    .line 429
    .restart local v2       #exception:Ljava/lang/RuntimeException;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p3, v6, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 430
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 431
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/telephony/BaiduSubManager;->mSetSlotActiveMsg:Landroid/os/Message;

    goto/16 :goto_0

    .line 451
    .end local v2           #exception:Ljava/lang/RuntimeException;
    :cond_b
    const/4 v6, 0x1

    iget-object v7, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "airplane_mode_on"

    const/4 v9, -0x1

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v6, v7, :cond_c

    .line 453
    const-string v6, "BaiduSubManager"

    const-string v7, "airplane mode on, no need deactive any"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    if-eqz p3, :cond_0

    .line 456
    const/4 v5, 0x1

    .line 457
    const/4 v2, 0x0

    .line 458
    .restart local v2       #exception:Ljava/lang/RuntimeException;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p3, v6, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 459
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 460
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/telephony/BaiduSubManager;->mSetSlotActiveMsg:Landroid/os/Message;

    goto/16 :goto_0

    .line 464
    .end local v2           #exception:Ljava/lang/RuntimeException;
    :cond_c
    packed-switch v0, :pswitch_data_1

    .line 574
    const-string v6, "BaiduSubManager"

    const-string v7, "unknown dual card mode"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    if-eqz p3, :cond_0

    .line 577
    const/4 v5, 0x0

    .line 578
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v6, "unknown dual card mode"

    invoke-direct {v2, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 579
    .restart local v2       #exception:Ljava/lang/RuntimeException;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p3, v6, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 580
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 581
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/telephony/BaiduSubManager;->mSetSlotActiveMsg:Landroid/os/Message;

    goto/16 :goto_0

    .line 468
    .end local v2           #exception:Ljava/lang/RuntimeException;
    :pswitch_4
    const-string v6, "BaiduSubManager"

    const-string v7, "already in disable mode, no need to deactive any"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    if-eqz p3, :cond_0

    .line 471
    const/4 v5, 0x1

    .line 472
    const/4 v2, 0x0

    .line 473
    .restart local v2       #exception:Ljava/lang/RuntimeException;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p3, v6, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 474
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 475
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/telephony/BaiduSubManager;->mSetSlotActiveMsg:Landroid/os/Message;

    goto/16 :goto_0

    .line 481
    .end local v2           #exception:Ljava/lang/RuntimeException;
    :pswitch_5
    if-nez p1, :cond_d

    .line 483
    :try_start_4
    invoke-direct {p0}, Landroid/telephony/BaiduSubManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    iget-object v7, p0, Landroid/telephony/BaiduSubManager;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v7}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lcom/android/internal/telephony/ITelephony;->registerForSimModeChange(Landroid/os/IBinder;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_9

    .line 489
    :goto_6
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 490
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 491
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "mode"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 492
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 484
    .end local v3           #intent:Landroid/content/Intent;
    :catch_8
    move-exception v1

    .line 485
    .local v1, ex:Landroid/os/RemoteException;
    const-string v6, "BaiduSubManager"

    const-string v7, "RemoteException ex"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 486
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_9
    move-exception v1

    .line 487
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v6, "BaiduSubManager"

    const-string v7, "NullPointerException ex"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 495
    .end local v1           #ex:Ljava/lang/NullPointerException;
    :cond_d
    const-string v6, "BaiduSubManager"

    const-string v7, "slot already deactive"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    if-eqz p3, :cond_0

    .line 498
    const/4 v5, 0x1

    .line 499
    const/4 v2, 0x0

    .line 500
    .restart local v2       #exception:Ljava/lang/RuntimeException;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p3, v6, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 501
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 502
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/telephony/BaiduSubManager;->mSetSlotActiveMsg:Landroid/os/Message;

    goto/16 :goto_0

    .line 509
    .end local v2           #exception:Ljava/lang/RuntimeException;
    :pswitch_6
    const/4 v6, 0x1

    if-ne p1, v6, :cond_e

    .line 511
    :try_start_5
    invoke-direct {p0}, Landroid/telephony/BaiduSubManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    iget-object v7, p0, Landroid/telephony/BaiduSubManager;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v7}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lcom/android/internal/telephony/ITelephony;->registerForSimModeChange(Landroid/os/IBinder;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_b

    .line 517
    :goto_7
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 518
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 519
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "mode"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 520
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 512
    .end local v3           #intent:Landroid/content/Intent;
    :catch_a
    move-exception v1

    .line 513
    .local v1, ex:Landroid/os/RemoteException;
    const-string v6, "BaiduSubManager"

    const-string v7, "RemoteException ex"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 514
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_b
    move-exception v1

    .line 515
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v6, "BaiduSubManager"

    const-string v7, "NullPointerException ex"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 523
    .end local v1           #ex:Ljava/lang/NullPointerException;
    :cond_e
    const-string v6, "BaiduSubManager"

    const-string v7, "slot already deactive"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    if-eqz p3, :cond_0

    .line 526
    const/4 v5, 0x1

    .line 527
    const/4 v2, 0x0

    .line 528
    .restart local v2       #exception:Ljava/lang/RuntimeException;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p3, v6, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 529
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 530
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/telephony/BaiduSubManager;->mSetSlotActiveMsg:Landroid/os/Message;

    goto/16 :goto_0

    .line 538
    .end local v2           #exception:Ljava/lang/RuntimeException;
    :pswitch_7
    :try_start_6
    invoke-direct {p0}, Landroid/telephony/BaiduSubManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    iget-object v7, p0, Landroid/telephony/BaiduSubManager;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v7}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lcom/android/internal/telephony/ITelephony;->registerForSimModeChange(Landroid/os/IBinder;I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_d

    .line 544
    :goto_8
    if-nez p1, :cond_10

    .line 545
    if-eqz v4, :cond_f

    .line 546
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    const/4 v8, 0x2

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 547
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 548
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "mode"

    const/4 v7, 0x2

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 549
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 539
    .end local v3           #intent:Landroid/content/Intent;
    :catch_c
    move-exception v1

    .line 540
    .local v1, ex:Landroid/os/RemoteException;
    const-string v6, "BaiduSubManager"

    const-string v7, "RemoteException ex"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 541
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_d
    move-exception v1

    .line 542
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v6, "BaiduSubManager"

    const-string v7, "NullPointerException ex"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 551
    .end local v1           #ex:Ljava/lang/NullPointerException;
    :cond_f
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 552
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 553
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "mode"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 554
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 557
    .end local v3           #intent:Landroid/content/Intent;
    :cond_10
    if-eqz v4, :cond_11

    .line 558
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 559
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 560
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "mode"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 561
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 563
    .end local v3           #intent:Landroid/content/Intent;
    :cond_11
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 564
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 565
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "mode"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 566
    iget-object v6, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 328
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 464
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public setSlotMode(IILandroid/os/Message;)V
    .locals 4
    .parameter "slot"
    .parameter "mode"
    .parameter "onCompleteMsg"

    .prologue
    .line 629
    const/4 v1, 0x0

    .line 632
    .local v1, result:Z
    if-eqz p1, :cond_1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    .line 633
    const-string v2, "BaiduSubManager"

    const-string v3, "slot error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    if-eqz p3, :cond_0

    .line 635
    const/4 v1, 0x0

    .line 636
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "slot error"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 637
    .local v0, exception:Ljava/lang/RuntimeException;
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p3, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 638
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 660
    .end local v0           #exception:Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void

    .line 643
    :cond_1
    invoke-virtual {p0, p1}, Landroid/telephony/BaiduSubManager;->isCardInsert(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 644
    const-string v2, "BaiduSubManager"

    const-string v3, "no card in slot"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    if-eqz p3, :cond_0

    .line 646
    const/4 v1, 0x0

    .line 647
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "no card in slot"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 648
    .restart local v0       #exception:Ljava/lang/RuntimeException;
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p3, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 649
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 654
    .end local v0           #exception:Ljava/lang/RuntimeException;
    :cond_2
    if-eqz p3, :cond_0

    .line 655
    const/4 v1, 0x1

    .line 656
    const/4 v0, 0x0

    .line 657
    .restart local v0       #exception:Ljava/lang/RuntimeException;
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p3, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 658
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
