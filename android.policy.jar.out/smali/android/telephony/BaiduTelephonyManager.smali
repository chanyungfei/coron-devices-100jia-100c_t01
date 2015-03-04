.class public Landroid/telephony/BaiduTelephonyManager;
.super Ljava/lang/Object;
.source "BaiduTelephonyManager.java"


# static fields
.field public static final CALL_STATE_IDLE:I = 0x0

.field public static final CALL_STATE_OFFHOOK:I = 0x2

.field public static final CALL_STATE_RINGING:I = 0x1

.field public static final DATA_ACTIVITY_DORMANT:I = 0x4

.field public static final DATA_ACTIVITY_IN:I = 0x1

.field public static final DATA_ACTIVITY_INOUT:I = 0x3

.field public static final DATA_ACTIVITY_NONE:I = 0x0

.field public static final DATA_ACTIVITY_OUT:I = 0x2

.field public static final DATA_CONNECTED:I = 0x2

.field public static final DATA_CONNECTING:I = 0x1

.field public static final DATA_DISCONNECTED:I = 0x0

.field public static final DATA_SUSPENDED:I = 0x3

.field public static final DATA_UNKNOWN:I = -0x1

.field public static final NETWORK_CLASS_2_G:I = 0x1

.field public static final NETWORK_CLASS_3_G:I = 0x2

.field public static final NETWORK_CLASS_4_G:I = 0x3

.field public static final NETWORK_CLASS_UNKNOWN:I = 0x0

.field public static final NETWORK_TYPE_1xRTT:I = 0x7

.field public static final NETWORK_TYPE_CDMA:I = 0x4

.field public static final NETWORK_TYPE_EDGE:I = 0x2

.field public static final NETWORK_TYPE_EHRPD:I = 0xe

.field public static final NETWORK_TYPE_EVDO_0:I = 0x5

.field public static final NETWORK_TYPE_EVDO_A:I = 0x6

.field public static final NETWORK_TYPE_EVDO_B:I = 0xc

.field public static final NETWORK_TYPE_GPRS:I = 0x1

.field public static final NETWORK_TYPE_HSDPA:I = 0x8

.field public static final NETWORK_TYPE_HSPA:I = 0xa

.field public static final NETWORK_TYPE_HSPAP:I = 0xf

.field public static final NETWORK_TYPE_HSUPA:I = 0x9

.field public static final NETWORK_TYPE_IDEN:I = 0xb

.field public static final NETWORK_TYPE_LTE:I = 0xd

.field public static final NETWORK_TYPE_UMTS:I = 0x3

.field public static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field public static final PHONE_TYPE_CDMA:I = 0x2

.field public static final PHONE_TYPE_GSM:I = 0x1

.field public static final PHONE_TYPE_NONE:I = 0x0

.field public static final PHONE_TYPE_SIP:I = 0x3

.field public static final SIM_STATE_ABSENT:I = 0x1

.field public static final SIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final SIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final SIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final SIM_STATE_READY:I = 0x5

.field public static final SIM_STATE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BaiduTelephonyManager"

.field private static defaultSimId:I

.field private static sInstance:Landroid/telephony/BaiduTelephonyManager;


# instance fields
.field private scAddressCached:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput v0, Landroid/telephony/BaiduTelephonyManager;->defaultSimId:I

    .line 69
    new-instance v0, Landroid/telephony/BaiduTelephonyManager;

    invoke-direct {v0}, Landroid/telephony/BaiduTelephonyManager;-><init>()V

    sput-object v0, Landroid/telephony/BaiduTelephonyManager;->sInstance:Landroid/telephony/BaiduTelephonyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/BaiduTelephonyManager;->scAddressCached:[Ljava/lang/String;

    .line 67
    return-void
.end method

.method private extractSmscNumber(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .parameter "smsc"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 693
    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 694
    .local v0, hasPostFix:I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 695
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 696
    .local v3, strs:[Ljava/lang/String;
    if-eqz v3, :cond_0

    array-length v4, v3

    if-ne v4, v7, :cond_0

    .line 697
    aget-object v2, v3, v5

    .line 698
    .local v2, preFix:Ljava/lang/String;
    aget-object v1, v3, v6

    .line 699
    .local v1, postFix:Ljava/lang/String;
    new-array v4, v7, [Ljava/lang/String;

    aput-object v2, v4, v5

    aput-object v1, v4, v6

    .line 703
    .end local v1           #postFix:Ljava/lang/String;
    .end local v2           #preFix:Ljava/lang/String;
    .end local v3           #strs:[Ljava/lang/String;
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static getDefault()Landroid/telephony/BaiduTelephonyManager;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Landroid/telephony/BaiduTelephonyManager;->sInstance:Landroid/telephony/BaiduTelephonyManager;

    return-object v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 837
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkClass(I)I
    .locals 1
    .parameter "networkType"

    .prologue
    .line 342
    packed-switch p0, :pswitch_data_0

    .line 362
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 348
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 358
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 360
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 342
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getPhoneTypeFromNetworkType()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 184
    const-string v1, "ro.telephony.default_network"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 185
    .local v0, mode:I
    if-ne v0, v2, :cond_0

    .line 186
    const/4 v1, 0x0

    .line 187
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneType(I)I

    move-result v1

    goto :goto_0
.end method

.method private getPhoneTypeFromProperty()I
    .locals 3

    .prologue
    .line 174
    const-string v1, "gsm.current.phone-type"

    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getPhoneTypeFromNetworkType()I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 177
    .local v0, type:I
    return v0
.end method

.method private getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 2
    .parameter "slotId"

    .prologue
    .line 630
    const-string v0, "BaiduTelephonyManager"

    const-string v1, "getSubscriberInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    if-nez p1, :cond_0

    .line 633
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    .line 635
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "iphonesubinfo2"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    goto :goto_0
.end method

.method private isMtkPlatform()Z
    .locals 2

    .prologue
    .line 739
    const-string v1, "ro.mediatek.platform"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 740
    .local v0, platformMtk:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "MT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 741
    const/4 v1, 0x1

    .line 744
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCallState(I)I
    .locals 4
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 751
    const-string v2, "BaiduTelephonyManager"

    const-string v3, "getCallState"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getCallStateGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 759
    :goto_0
    return v1

    .line 754
    :catch_0
    move-exception v0

    .line 756
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 757
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 759
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCellLocation(I)Landroid/telephony/CellLocation;
    .locals 5
    .parameter "slotId"

    .prologue
    const/4 v2, 0x0

    .line 108
    const-string v3, "BaiduTelephonyManager"

    const-string v4, "getCellLocation"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->getCellLocationGemini(I)Landroid/os/Bundle;

    move-result-object v0

    .line 111
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {v0}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 115
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-object v2

    .line 112
    :catch_0
    move-exception v1

    .line 113
    .local v1, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 114
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 115
    .local v1, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCompleteVoiceMailNumber(I)Ljava/lang/String;
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 583
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telephony/BaiduTelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getCompleteVoiceMailNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 588
    :goto_0
    return-object v1

    .line 584
    :catch_0
    move-exception v0

    .line 585
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 586
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 588
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCurrentPhoneType(I)I
    .locals 4
    .parameter "slotId"

    .prologue
    .line 140
    const-string v2, "BaiduTelephonyManager"

    const-string v3, "getPhoneType"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 143
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 144
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneTypeGemini(I)I

    move-result v2

    .line 156
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 147
    .restart local v1       #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getPhoneTypeFromProperty()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 149
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 152
    .local v0, ex:Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_0

    .line 153
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 156
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_0
.end method

.method public getDataActivity(I)I
    .locals 4
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 788
    const-string v2, "BaiduTelephonyManager"

    const-string v3, "getDataActivity"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getDataActivityGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 796
    :goto_0
    return v1

    .line 791
    :catch_0
    move-exception v0

    .line 793
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 794
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 796
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDataState(I)I
    .locals 4
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 825
    const-string v2, "BaiduTelephonyManager"

    const-string v3, "getDataState"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getDataStateGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 832
    :goto_0
    return v1

    .line 828
    :catch_0
    move-exception v0

    .line 830
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 831
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 832
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 91
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telephony/BaiduTelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 95
    :goto_0
    return-object v1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 94
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 95
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 4
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 544
    const-string v2, "BaiduTelephonyManager"

    const-string v3, "getLine1Number"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telephony/BaiduTelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1Number()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 551
    :goto_0
    return-object v1

    .line 547
    :catch_0
    move-exception v0

    .line 548
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 549
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 551
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getNetworkCountryIso(I)Ljava/lang/String;
    .locals 2
    .parameter "slotId"

    .prologue
    .line 246
    const-string v0, "BaiduTelephonyManager"

    const-string v1, "getNetworkCountryIso"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    if-nez p1, :cond_0

    const-string v0, "gsm.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "gsm.operator.iso-country.2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 2
    .parameter "slotId"

    .prologue
    .line 218
    const-string v0, "BaiduTelephonyManager"

    const-string v1, "getNetworkOperator"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    if-nez p1, :cond_0

    const-string v0, "gsm.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "gsm.operator.numeric.2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkOperatorName(I)Ljava/lang/String;
    .locals 2
    .parameter "slotId"

    .prologue
    .line 204
    const-string v0, "BaiduTelephonyManager"

    const-string v1, "getNetworkOperatorName"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    if-nez p1, :cond_0

    const-string v0, "gsm.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "gsm.operator.alpha.2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkType(I)I
    .locals 5
    .parameter "slotId"

    .prologue
    const/4 v2, 0x0

    .line 308
    const-string v3, "BaiduTelephonyManager"

    const-string v4, "getNetworkType"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 311
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 312
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getNetworkTypeGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 322
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 317
    :catch_0
    move-exception v0

    .line 319
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 320
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 322
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .parameter "slotId"

    .prologue
    .line 374
    invoke-virtual {p0, p1}, Landroid/telephony/BaiduTelephonyManager;->getNetworkType(I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneType(I)I
    .locals 1
    .parameter "slotId"

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Landroid/telephony/BaiduTelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    return v0
.end method

.method public getScAddress(I)Ljava/lang/String;
    .locals 9
    .parameter "slotId"

    .prologue
    const/4 v5, 0x0

    .line 661
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    invoke-interface {v6, p1}, Lcom/android/internal/telephony/ITelephony;->getScAddressGemini(I)Ljava/lang/String;

    move-result-object v4

    .line 663
    .local v4, scAddressStr:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v2, v5

    .line 688
    .end local v4           #scAddressStr:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 666
    .restart local v4       #scAddressStr:Ljava/lang/String;
    :cond_0
    const-string v6, "BaiduTelephonyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getScAddress scAddressStr"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    const-string v6, "\""

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 670
    invoke-direct {p0, v4}, Landroid/telephony/BaiduTelephonyManager;->extractSmscNumber(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/telephony/BaiduTelephonyManager;->scAddressCached:[Ljava/lang/String;

    .line 671
    iget-object v6, p0, Landroid/telephony/BaiduTelephonyManager;->scAddressCached:[Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/telephony/BaiduTelephonyManager;->scAddressCached:[Ljava/lang/String;

    array-length v6, v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 672
    iget-object v6, p0, Landroid/telephony/BaiduTelephonyManager;->scAddressCached:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v4, v6, v7

    .line 675
    :cond_1
    const-string v6, "+"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "86"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    move-object v2, v4

    .line 676
    goto :goto_0

    .line 679
    :cond_3
    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 680
    .local v3, scAddressPdu:[B
    const/4 v6, 0x1

    const/16 v7, 0x8

    invoke-static {v3, v6, v7}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 681
    .local v2, scAddress:Ljava/lang/String;
    const-string v6, "BaiduTelephonyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "scAddress by calledPartyBCDToString"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 683
    .end local v2           #scAddress:Ljava/lang/String;
    .end local v3           #scAddressPdu:[B
    .end local v4           #scAddressStr:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 684
    .local v0, e1:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move-object v2, v5

    .line 685
    goto :goto_0

    .line 686
    .end local v0           #e1:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 687
    .local v1, e2:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    move-object v2, v5

    .line 688
    goto :goto_0
.end method

.method public getSimCountryIso(I)Ljava/lang/String;
    .locals 2
    .parameter "slotId"

    .prologue
    .line 486
    const-string v0, "BaiduTelephonyManager"

    const-string v1, "getSimCountryIso"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    if-nez p1, :cond_0

    const-string v0, "gsm.sim.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "gsm.sim.operator.iso-country.2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 2
    .parameter "slotId"

    .prologue
    .line 460
    const-string v0, "BaiduTelephonyManager"

    const-string v1, "getSimOperator"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    if-nez p1, :cond_0

    .line 462
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 464
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "gsm.sim.operator.numeric.2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimOperatorName(I)Ljava/lang/String;
    .locals 2
    .parameter "slotId"

    .prologue
    .line 476
    const-string v0, "BaiduTelephonyManager"

    const-string v1, "getSimOperatorName"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    if-nez p1, :cond_0

    const-string v0, "gsm.sim.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "gsm.sim.operator.alpha.2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 4
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 500
    const-string v2, "BaiduTelephonyManager"

    const-string v3, "getSimSerialNumber"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telephony/BaiduTelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 507
    :goto_0
    return-object v1

    .line 503
    :catch_0
    move-exception v0

    .line 504
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 505
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 507
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSimState(I)I
    .locals 3
    .parameter "slotId"

    .prologue
    .line 427
    const-string v1, "BaiduTelephonyManager"

    const-string v2, "getSimState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    if-nez p1, :cond_0

    const-string v1, "gsm.sim.state"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, prop:Ljava/lang/String;
    :goto_0
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 432
    const/4 v1, 0x1

    .line 447
    :goto_1
    return v1

    .line 428
    .end local v0           #prop:Ljava/lang/String;
    :cond_0
    const-string v1, "gsm.sim.state.2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 434
    .restart local v0       #prop:Ljava/lang/String;
    :cond_1
    const-string v1, "PIN_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 435
    const/4 v1, 0x2

    goto :goto_1

    .line 437
    :cond_2
    const-string v1, "PUK_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 438
    const/4 v1, 0x3

    goto :goto_1

    .line 440
    :cond_3
    const-string v1, "NETWORK_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 441
    const/4 v1, 0x4

    goto :goto_1

    .line 443
    :cond_4
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 444
    const/4 v1, 0x5

    goto :goto_1

    .line 447
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 4
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 525
    const-string v2, "BaiduTelephonyManager"

    const-string v3, "getSubscriberId"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telephony/BaiduTelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 532
    :goto_0
    return-object v1

    .line 528
    :catch_0
    move-exception v0

    .line 529
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 530
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 532
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMailAlphaTag(I)Ljava/lang/String;
    .locals 4
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 618
    const-string v2, "BaiduTelephonyManager"

    const-string v3, "getVoiceMailAlphaTag"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telephony/BaiduTelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailAlphaTag()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 625
    :goto_0
    return-object v1

    .line 621
    :catch_0
    move-exception v0

    .line 622
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 623
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 625
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMailNumber(I)Ljava/lang/String;
    .locals 4
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 562
    const-string v2, "BaiduTelephonyManager"

    const-string v3, "getVoiceMailNumber"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telephony/BaiduTelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 569
    :goto_0
    return-object v1

    .line 565
    :catch_0
    move-exception v0

    .line 566
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 567
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 569
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMessageCount(I)I
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 601
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getVoiceMessageCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 606
    :goto_0
    return v1

    .line 602
    :catch_0
    move-exception v0

    .line 603
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 604
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 606
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public handlePinMmi(Ljava/lang/String;I)Z
    .locals 4
    .parameter "mmiCode"
    .parameter "slotId"

    .prologue
    const/4 v2, 0x0

    .line 901
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 903
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-nez p2, :cond_0

    .line 904
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v1, p1, v3}, Lcom/android/internal/telephony/ITelephony;->handlePinMmiGemini(Ljava/lang/String;I)Z

    move-result v2

    .line 908
    :goto_0
    return v2

    .line 906
    :cond_0
    const/4 v3, 0x1

    invoke-interface {v1, p1, v3}, Lcom/android/internal/telephony/ITelephony;->handlePinMmiGemini(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 907
    :catch_0
    move-exception v0

    .line 908
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public hasIccCard(I)Z
    .locals 4
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 403
    const-string v2, "BaiduTelephonyManager"

    const-string v3, "hasIccCard"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->hasIccCardGemini(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 411
    :goto_0
    return v1

    .line 406
    :catch_0
    move-exception v0

    .line 408
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 409
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 411
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isNetworkRoaming(I)Z
    .locals 2
    .parameter "slotId"

    .prologue
    .line 231
    const-string v0, "BaiduTelephonyManager"

    const-string v1, "isNetworkRoaming"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    if-nez p1, :cond_0

    const-string v0, "true"

    const-string v1, "gsm.operator.isroaming"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "true"

    const-string v1, "gsm.operator.isroaming.2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public listen(Landroid/content/Context;Landroid/telephony/PhoneStateListener;II)V
    .locals 8
    .parameter "context"
    .parameter "listener"
    .parameter "events"
    .parameter "slotId"

    .prologue
    .line 870
    const-string v6, "BaiduTelephonyManager"

    const-string v7, "listen"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 873
    .local v0, appContext:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 874
    move-object v5, v0

    .line 879
    .local v5, sContext:Landroid/content/Context;
    :goto_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 881
    .local v4, pkgForDebug:Ljava/lang/String;
    :goto_1
    const-string v6, "telephony.registry"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    .line 883
    .local v1, mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;
    const-string v6, "telephony.registry2"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v2

    .line 887
    .local v2, mRegistry2:Lcom/android/internal/telephony/ITelephonyRegistry;
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 888
    .local v3, notifyNow:Ljava/lang/Boolean;
    if-nez p4, :cond_3

    .line 889
    invoke-virtual {p2}, Landroid/telephony/PhoneStateListener;->getCallback()Lcom/android/internal/telephony/IPhoneStateListener;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-interface {v1, v4, v6, p3, v7}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 898
    .end local v3           #notifyNow:Ljava/lang/Boolean;
    :goto_3
    return-void

    .line 876
    .end local v1           #mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;
    .end local v2           #mRegistry2:Lcom/android/internal/telephony/ITelephonyRegistry;
    .end local v4           #pkgForDebug:Ljava/lang/String;
    .end local v5           #sContext:Landroid/content/Context;
    :cond_0
    move-object v5, p1

    .restart local v5       #sContext:Landroid/content/Context;
    goto :goto_0

    .line 879
    :cond_1
    const-string v4, "<unknown>"

    goto :goto_1

    .line 887
    .restart local v1       #mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;
    .restart local v2       #mRegistry2:Lcom/android/internal/telephony/ITelephonyRegistry;
    .restart local v4       #pkgForDebug:Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 891
    .restart local v3       #notifyNow:Ljava/lang/Boolean;
    :cond_3
    :try_start_1
    invoke-virtual {p2}, Landroid/telephony/PhoneStateListener;->getCallback()Lcom/android/internal/telephony/IPhoneStateListener;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-interface {v2, v4, v6, p3, v7}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 893
    .end local v3           #notifyNow:Ljava/lang/Boolean;
    :catch_0
    move-exception v6

    goto :goto_3

    .line 895
    :catch_1
    move-exception v6

    goto :goto_3
.end method

.method public setScAddress(Ljava/lang/String;I)Z
    .locals 8
    .parameter "address"
    .parameter "slotId"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 717
    :try_start_0
    iget-object v5, p0, Landroid/telephony/BaiduTelephonyManager;->scAddressCached:[Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/telephony/BaiduTelephonyManager;->scAddressCached:[Ljava/lang/String;

    array-length v5, v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 718
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/telephony/BaiduTelephonyManager;->scAddressCached:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 726
    .local v2, encodedScAddress:Ljava/lang/String;
    :goto_0
    const-string v5, "BaiduTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setScAddress encodedScAddress"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    invoke-interface {v5, v2, p2}, Lcom/android/internal/telephony/ITelephony;->setScAddressGemini(Ljava/lang/String;I)V

    .line 734
    .end local v2           #encodedScAddress:Ljava/lang/String;
    :goto_1
    return v3

    .line 719
    :cond_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->isMtkPlatform()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 720
    move-object v2, p1

    .restart local v2       #encodedScAddress:Ljava/lang/String;
    goto :goto_0

    .line 722
    .end local v2           #encodedScAddress:Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .restart local v2       #encodedScAddress:Ljava/lang/String;
    goto :goto_0

    .line 729
    .end local v2           #encodedScAddress:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 730
    .local v0, e1:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move v3, v4

    .line 731
    goto :goto_1

    .line 732
    .end local v0           #e1:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 733
    .local v1, e2:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    move v3, v4

    .line 734
    goto :goto_1
.end method
