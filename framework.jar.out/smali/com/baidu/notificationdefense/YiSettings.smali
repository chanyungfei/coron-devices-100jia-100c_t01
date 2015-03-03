.class Lcom/baidu/notificationdefense/YiSettings;
.super Ljava/lang/Object;
.source "YiSettings.java"


# static fields
.field static final APP_LIST:[Ljava/lang/String; = null

.field static final BLOCK_MILLIS:J = 0x48190800L


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.baidu.appsearch"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.tencent.android.qqdownloader"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.dragon.android.pandaspace"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.taobao.appcenter"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.wandoujia.phoenix2"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.yingyonghui.market"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "cn.goapk.market"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.hiapk.marketpho"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.huawei.appmarket"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.qihoo.appstore"

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/notificationdefense/YiSettings;->APP_LIST:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
