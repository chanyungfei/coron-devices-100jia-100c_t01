.class public Lcom/baidu/notificationdefense/NotificationDefenseService;
.super Lcom/baidu/notificationdefense/INotificationDefenseService$Stub;
.source "NotificationDefenseService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/notificationdefense/NotificationDefenseService$DefenseHandler;
    }
.end annotation


# static fields
.field private static final ACTIVED_DEV:Ljava/lang/String; = "ndfs_dev_actived"

.field private static final ACTIVE_MILLIS:Ljava/lang/String; = "ndfs_actived_millis"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final DB_VERSION:I = 0x1

.field private static final DEBUG:Z = false

.field private static final FIRST_RUN:Ljava/lang/String; = "ndfs_first"

.field private static final MSG_NOTIFY_CANCEL:I = 0xb

.field public static final Name:Ljava/lang/String; = "NotificationDefenseService"

.field public static final TAG:Ljava/lang/String; = "NotificationDefenseService"

.field private static final TAG_BLOCKED_PKGS:Ljava/lang/String; = "blocked-packages"

.field private static final TAG_BODY:Ljava/lang/String; = "notification-policy"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"


# instance fields
.field private mBlockedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mPolicyFile:Lcom/android/internal/os/AtomicFile;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/baidu/notificationdefense/INotificationDefenseService$Stub;-><init>()V

    .line 192
    iput-object p1, p0, Lcom/baidu/notificationdefense/NotificationDefenseService;->mContext:Landroid/content/Context;

    .line 194
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NotificationDefenseService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/notificationdefense/NotificationDefenseService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 195
    iget-object v0, p0, Lcom/baidu/notificationdefense/NotificationDefenseService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 196
    new-instance v0, Lcom/baidu/notificationdefense/NotificationDefenseService$DefenseHandler;

    iget-object v1, p0, Lcom/baidu/notificationdefense/NotificationDefenseService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/baidu/notificationdefense/NotificationDefenseService$DefenseHandler;-><init>(Lcom/baidu/notificationdefense/NotificationDefenseService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/notificationdefense/NotificationDefenseService;->mHandler:Landroid/os/Handler;

    .line 198
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/baidu/notificationdefense/NotificationDefenseService;->mBlockedPackages:Ljava/util/HashSet;

    .line 199
    invoke-direct {p0}, Lcom/baidu/notificationdefense/NotificationDefenseService;->loadBlockDb()V

    .line 200
    invoke-direct {p0}, Lcom/baidu/notificationdefense/NotificationDefenseService;->initSettings()V

    .line 201
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/notificationdefense/NotificationDefenseService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/baidu/notificationdefense/NotificationDefenseService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkAds(Ljava/lang/String;Landroid/app/Notification;)Z
    .locals 2
    .parameter "pkg"
    .parameter "notification"

    .prologue
    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, blocked:Z
    iget-object v1, p2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 269
    .local v1, title:Ljava/lang/CharSequence;
    return v0
.end method

.method private initSettings()V
    .locals 15

    .prologue
    const-wide/16 v13, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x1

    .line 144
    iget-object v11, p0, Lcom/baidu/notificationdefense/NotificationDefenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "ndfs_first"

    invoke-static {v11, v12, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_0

    move v6, v10

    .line 146
    .local v6, isFirstRun:Z
    :goto_0
    if-eqz v6, :cond_3

    .line 147
    iget-object v11, p0, Lcom/baidu/notificationdefense/NotificationDefenseService;->mBlockedPackages:Ljava/util/HashSet;

    monitor-enter v11

    .line 148
    :try_start_0
    sget-object v3, Lcom/baidu/notificationdefense/YiSettings;->APP_LIST:[Ljava/lang/String;

    .local v3, arr$:[Ljava/lang/String;
    array-length v7, v3

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v7, :cond_1

    aget-object v9, v3, v5

    .line 149
    .local v9, pkg:Ljava/lang/String;
    iget-object v12, p0, Lcom/baidu/notificationdefense/NotificationDefenseService;->mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v12, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 148
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v3           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #isFirstRun:Z
    .end local v7           #len$:I
    .end local v9           #pkg:Ljava/lang/String;
    :cond_0
    move v6, v2

    .line 144
    goto :goto_0

    .line 151
    .restart local v3       #arr$:[Ljava/lang/String;
    .restart local v5       #i$:I
    .restart local v6       #isFirstRun:Z
    .restart local v7       #len$:I
    :cond_1
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    invoke-direct {p0}, Lcom/baidu/notificationdefense/NotificationDefenseService;->writeBlockDb()V

    .line 153
    iget-object v11, p0, Lcom/baidu/notificationdefense/NotificationDefenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "ndfs_first"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 188
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v7           #len$:I
    :cond_2
    :goto_2
    return-void

    .line 151
    :catchall_0
    move-exception v10

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    .line 155
    :cond_3
    iget-object v11, p0, Lcom/baidu/notificationdefense/NotificationDefenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "ndfs_dev_actived"

    invoke-static {v11, v12, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v10, :cond_4

    move v2, v10

    .line 156
    .local v2, actived:Z
    :cond_4
    if-nez v2, :cond_2

    .line 157
    iget-object v11, p0, Lcom/baidu/notificationdefense/NotificationDefenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "ndfs_actived_millis"

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 158
    .local v0, activeMillis:J
    cmp-long v11, v0, v13

    if-nez v11, :cond_8

    .line 159
    new-instance v4, Ljava/io/File;

    const-string v10, "/data/data/com.baidu.bsf.system/files/register_info.xml"

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 161
    const/4 v2, 0x1

    .line 173
    :cond_5
    :goto_3
    if-eqz v2, :cond_2

    .line 174
    iget-object v10, p0, Lcom/baidu/notificationdefense/NotificationDefenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "ndfs_actived_millis"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_2

    .line 163
    :cond_6
    new-instance v4, Ljava/io/File;

    .end local v4           #file:Ljava/io/File;
    const-string v10, "/data/data/com.baidu.register/files/register_info.xml"

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .restart local v4       #file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 165
    const/4 v2, 0x1

    goto :goto_3

    .line 167
    :cond_7
    new-instance v4, Ljava/io/File;

    .end local v4           #file:Ljava/io/File;
    const-string v10, "/data/data/register/register_info.xml"

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    .restart local v4       #file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 169
    const/4 v2, 0x1

    goto :goto_3

    .line 176
    .end local v4           #file:Ljava/io/File;
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v0

    const-wide/32 v13, 0x48190800

    cmp-long v11, v11, v13

    if-lez v11, :cond_2

    .line 177
    iget-object v11, p0, Lcom/baidu/notificationdefense/NotificationDefenseService;->mBlockedPackages:Ljava/util/HashSet;

    monitor-enter v11

    .line 178
    :try_start_2
    sget-object v3, Lcom/baidu/notificationdefense/YiSettings;->APP_LIST:[Ljava/lang/String;

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v7, v3

    .restart local v7       #len$:I
    const/4 v5, 0x0

    .restart local v5       #i$:I
    :goto_4
    if-ge v5, v7, :cond_9

    aget-object v8, v3, v5

    .line 180
    .local v8, packages:Ljava/lang/String;
    iget-object v12, p0, Lcom/baidu/notificationdefense/NotificationDefenseService;->mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v12, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 178
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 182
    .end local v8           #packages:Ljava/lang/String;
    :cond_9
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 183
    invoke-direct {p0}, Lcom/baidu/notificationdefense/NotificationDefenseService;->writeBlockDb()V

    .line 184
    iget-object v11, p0, Lcom/baidu/notificationdefense/NotificationDefenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "ndfs_dev_actived"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 182
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v7           #len$:I
    :catchall_1
    move-exception v10

    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v10
.end method

.method private loadBlockDb()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 61
    iget-object v8, p0, Lcom/baidu/notificationdefense/NotificationDefenseService;->mBlockedPackages:Ljava/util/HashSet;

    monitor-enter v8

    .line 62
    :try_start_0
    iget-object v7, p0, Lcom/baidu/notificationdefense/NotificationDefenseService;->mPolicyFile:Lcom/android/internal/os/AtomicFile;

    if-nez v7, :cond_3

    .line 63
    new-instance v0, Ljava/io/File;

    const-string v7, "/data/system"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    .local v0, dir:Ljava/io/File;
    new-instance v7, Lcom/android/internal/os/AtomicFile;

    new-instance v9, Ljava/io/File;

    const-string/jumbo v10, "notifydefense_policy.xml"

    invoke-direct {v9, v0, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v7, v9}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v7, p0, Lcom/baidu/notificationdefense/NotificationDefenseService;->mPolicyFile:Lcom/android/internal/os/AtomicFile;

    .line 66
    iget-object v7, p0, Lcom/baidu/notificationdefense/NotificationDefenseService;->mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    const/4 v2, 0x0

    .line 70
    .local v2, infile:Ljava/io/FileInputStream;
    :try_start_1
    iget-object v7, p0, Lcom/baidu/notificationdefense/NotificationDefenseService;->mPolicyFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v7}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 71
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 72
    .local v3, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v7, 0x0

    invoke-interface {v3, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 76
    const/4 v6, 0x1

    .line 77
    .local v6, version:I
    :cond_0
    :goto_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, type:I
    if-eq v5, v11, :cond_5

    .line 78
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, tag:Ljava/lang/String;
    const/4 v7, 0x2

    if-ne v5, v7, :cond_0

    .line 80
    const-string/jumbo v7, "notification-policy"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 81
    const/4 v7, 0x0

    const-string/jumbo v9, "version"

    invoke-interface {v3, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    .line 82
    :cond_1
    const-string v7, "blocked-packages"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 83
    :cond_2
    :goto_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-eq v5, v11, :cond_0

    .line 84
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 85
    const-string/jumbo v7, "package"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 86
    iget-object v7, p0, Lcom/baidu/notificationdefense/NotificationDefenseService;->mBlockedPackages:Ljava/util/HashSet;

    const/4 v9, 0x0

    const-string/jumbo v10, "name"

    invoke-interface {v3, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 94
    .end local v3           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v4           #tag:Ljava/lang/String;
    .end local v5           #type:I
    .end local v6           #version:I
    :catch_0
    move-exception v7

    .line 103
    :try_start_2
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 106
    .end local v0           #dir:Ljava/io/File;
    .end local v2           #infile:Ljava/io/FileInputStream;
    :cond_3
    :goto_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    return-void

    .line 87
    .restart local v0       #dir:Ljava/io/File;
    .restart local v2       #infile:Ljava/io/FileInputStream;
    .restart local v3       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4       #tag:Ljava/lang/String;
    .restart local v5       #type:I
    .restart local v6       #version:I
    :cond_4
    :try_start_3
    const-string v7, "blocked-packages"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x3

    if-ne v5, v7, :cond_2

    goto :goto_0

    .line 96
    .end local v3           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v4           #tag:Ljava/lang/String;
    .end local v5           #type:I
    .end local v6           #version:I
    :catch_1
    move-exception v1

    .line 97
    .local v1, e:Ljava/io/IOException;
    :try_start_4
    const-string v7, "NotificationDefenseService"

    const-string v9, "Unable to read blocked notifications database"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 103
    :try_start_5
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2

    .line 106
    .end local v0           #dir:Ljava/io/File;
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #infile:Ljava/io/FileInputStream;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v7

    .line 98
    .restart local v0       #dir:Ljava/io/File;
    .restart local v2       #infile:Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    .line 99
    .local v1, e:Ljava/lang/NumberFormatException;
    :try_start_6
    const-string v7, "NotificationDefenseService"

    const-string v9, "Unable to parse blocked notifications database"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 103
    :try_start_7
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 100
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v1

    .line 101
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_8
    const-string v7, "NotificationDefenseService"

    const-string v9, "Unable to parse blocked notifications database"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 103
    :try_start_9
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2

    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_1
    move-exception v7

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v7

    .restart local v3       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5       #type:I
    .restart local v6       #version:I
    :cond_5
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2
.end method

.method public static main(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 302
    new-instance v0, Lcom/baidu/notificationdefense/NotificationDefenseService;

    invoke-direct {v0, p0}, Lcom/baidu/notificationdefense/NotificationDefenseService;-><init>(Landroid/content/Context;)V

    .line 303
    .local v0, service:Lcom/baidu/notificationdefense/NotificationDefenseService;
    const-string v1, "NotificationDefenseService"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 307
    return-void
.end method

.method private writeBlockDb()V
    .locals 9

    .prologue
    .line 110
    iget-object v6, p0, Lcom/baidu/notificationdefense/NotificationDefenseService;->mBlockedPackages:Ljava/util/HashSet;

    monitor-enter v6

    .line 111
    const/4 v3, 0x0

    .line 113
    .local v3, outfile:Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v5, p0, Lcom/baidu/notificationdefense/NotificationDefenseService;->mPolicyFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v5}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 115
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 116
    .local v2, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v5, "utf-8"

    invoke-interface {v2, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 118
    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 120
    const/4 v5, 0x0

    const-string/jumbo v7, "notification-policy"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 121
    const/4 v5, 0x0

    const-string/jumbo v7, "version"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 122
    const/4 v5, 0x0

    const-string v7, "blocked-packages"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 124
    iget-object v5, p0, Lcom/baidu/notificationdefense/NotificationDefenseService;->mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 125
    .local v4, pkg:Ljava/lang/String;
    const/4 v5, 0x0

    const-string/jumbo v7, "package"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 126
    const/4 v5, 0x0

    const-string/jumbo v7, "name"

    invoke-interface {v2, v5, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 127
    const/4 v5, 0x0

    const-string/jumbo v7, "package"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v4           #pkg:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Ljava/io/IOException;
    if-eqz v3, :cond_0

    .line 137
    :try_start_1
    iget-object v5, p0, Lcom/baidu/notificationdefense/NotificationDefenseService;->mPolicyFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v5, v3}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 140
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    :goto_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    return-void

    .line 129
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #out:Lorg/xmlpull/v1/XmlSerializer;
    :cond_1
    const/4 v5, 0x0

    :try_start_2
    const-string v7, "blocked-packages"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 130
    const/4 v5, 0x0

    const-string/jumbo v7, "notification-policy"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 132
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 134
    iget-object v5, p0, Lcom/baidu/notificationdefense/NotificationDefenseService;->mPolicyFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v5, v3}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 140
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #out:Lorg/xmlpull/v1/XmlSerializer;
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5
.end method


# virtual methods
.method public areNotificationsEnabledForPackage(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkg"

    .prologue
    .line 205
    iget-object v2, p0, Lcom/baidu/notificationdefense/NotificationDefenseService;->mBlockedPackages:Ljava/util/HashSet;

    monitor-enter v2

    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/baidu/notificationdefense/NotificationDefenseService;->mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 207
    .local v0, enabled:Z
    :goto_0
    monitor-exit v2

    .line 208
    return v0

    .line 206
    .end local v0           #enabled:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 207
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public defense(Ljava/lang/String;ILandroid/app/Notification;)Z
    .locals 6
    .parameter "pkg"
    .parameter "id"
    .parameter "notification"

    .prologue
    .line 239
    iget-object v5, p0, Lcom/baidu/notificationdefense/NotificationDefenseService;->mBlockedPackages:Ljava/util/HashSet;

    monitor-enter v5

    .line 240
    :try_start_0
    iget-object v4, p0, Lcom/baidu/notificationdefense/NotificationDefenseService;->mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 241
    .local v0, blocked:Z
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    if-nez v0, :cond_0

    .line 244
    invoke-direct {p0, p1, p3}, Lcom/baidu/notificationdefense/NotificationDefenseService;->checkAds(Ljava/lang/String;Landroid/app/Notification;)Z

    move-result v0

    .line 247
    :cond_0
    if-eqz v0, :cond_1

    .line 248
    move-object v2, p1

    .line 249
    .local v2, clonePkg:Ljava/lang/String;
    move v1, p2

    .line 250
    .local v1, cloneId:I
    move-object v3, p3

    .line 251
    .local v3, ntf:Landroid/app/Notification;
    iget-object v4, p0, Lcom/baidu/notificationdefense/NotificationDefenseService;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/baidu/notificationdefense/NotificationDefenseService$1;

    invoke-direct {v5, p0, v2, v1, v3}, Lcom/baidu/notificationdefense/NotificationDefenseService$1;-><init>(Lcom/baidu/notificationdefense/NotificationDefenseService;Ljava/lang/String;ILandroid/app/Notification;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 260
    .end local v1           #cloneId:I
    .end local v2           #clonePkg:Ljava/lang/String;
    .end local v3           #ntf:Landroid/app/Notification;
    :cond_1
    return v0

    .line 241
    .end local v0           #blocked:Z
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public setNotificationsEnabledForPackage(Ljava/lang/String;Z)V
    .locals 4
    .parameter "pkg"
    .parameter "enabled"

    .prologue
    .line 216
    iget-object v2, p0, Lcom/baidu/notificationdefense/NotificationDefenseService;->mBlockedPackages:Ljava/util/HashSet;

    monitor-enter v2

    .line 217
    if-eqz p2, :cond_0

    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/baidu/notificationdefense/NotificationDefenseService;->mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 226
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    invoke-direct {p0}, Lcom/baidu/notificationdefense/NotificationDefenseService;->writeBlockDb()V

    .line 228
    return-void

    .line 220
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/baidu/notificationdefense/NotificationDefenseService;->mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object v1, p0, Lcom/baidu/notificationdefense/NotificationDefenseService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-virtual {v1, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 224
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/baidu/notificationdefense/NotificationDefenseService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 226
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
