.class public Lcom/baidu/backpad/BackpadControllService;
.super Lcom/baidu/backpad/IBackpadControll$Stub;
.source "BackpadControllService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/backpad/BackpadControllService$BackpadHandler;
    }
.end annotation


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final DB_VERSION:I = 0x1

.field private static final DEBUG:Z = false

.field private static final MSG_WRITE:I = 0xb

.field public static final TAG:Ljava/lang/String; = "BackpadControllManager"

.field private static final TAG_BLOCKED_PKGS:Ljava/lang/String; = "blocked-packages"

.field private static final TAG_BODY:Ljava/lang/String; = "backpad-controll-policy"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnabledPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mPolicyFile:Lcom/android/internal/os/AtomicFile;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/baidu/backpad/IBackpadControll$Stub;-><init>()V

    .line 146
    iput-object p1, p0, Lcom/baidu/backpad/BackpadControllService;->mContext:Landroid/content/Context;

    .line 148
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BackpadControllService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/backpad/BackpadControllService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 149
    iget-object v0, p0, Lcom/baidu/backpad/BackpadControllService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 150
    new-instance v0, Lcom/baidu/backpad/BackpadControllService$BackpadHandler;

    iget-object v1, p0, Lcom/baidu/backpad/BackpadControllService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/baidu/backpad/BackpadControllService$BackpadHandler;-><init>(Lcom/baidu/backpad/BackpadControllService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/backpad/BackpadControllService;->mHandler:Landroid/os/Handler;

    .line 152
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/baidu/backpad/BackpadControllService;->mEnabledPackages:Ljava/util/HashSet;

    .line 153
    invoke-direct {p0}, Lcom/baidu/backpad/BackpadControllService;->loadBlockDb()V

    .line 154
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/backpad/BackpadControllService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/baidu/backpad/BackpadControllService;->writeBlockDb()V

    return-void
.end method

.method private loadBlockDb()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 54
    iget-object v8, p0, Lcom/baidu/backpad/BackpadControllService;->mEnabledPackages:Ljava/util/HashSet;

    monitor-enter v8

    .line 55
    :try_start_0
    iget-object v7, p0, Lcom/baidu/backpad/BackpadControllService;->mPolicyFile:Lcom/android/internal/os/AtomicFile;

    if-nez v7, :cond_3

    .line 56
    new-instance v0, Ljava/io/File;

    const-string v7, "/data/system"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, dir:Ljava/io/File;
    new-instance v7, Lcom/android/internal/os/AtomicFile;

    new-instance v9, Ljava/io/File;

    const-string v10, "backpad_controll_policy.xml"

    invoke-direct {v9, v0, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v7, v9}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v7, p0, Lcom/baidu/backpad/BackpadControllService;->mPolicyFile:Lcom/android/internal/os/AtomicFile;

    .line 59
    iget-object v7, p0, Lcom/baidu/backpad/BackpadControllService;->mEnabledPackages:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    const/4 v2, 0x0

    .line 63
    .local v2, infile:Ljava/io/FileInputStream;
    :try_start_1
    iget-object v7, p0, Lcom/baidu/backpad/BackpadControllService;->mPolicyFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v7}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 64
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 65
    .local v3, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v7, 0x0

    invoke-interface {v3, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 69
    const/4 v6, 0x1

    .line 70
    .local v6, version:I
    :cond_0
    :goto_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, type:I
    if-eq v5, v11, :cond_5

    .line 71
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, tag:Ljava/lang/String;
    const/4 v7, 0x2

    if-ne v5, v7, :cond_0

    .line 73
    const-string v7, "backpad-controll-policy"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 74
    const/4 v7, 0x0

    const-string/jumbo v9, "version"

    invoke-interface {v3, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    .line 76
    :cond_1
    const-string v7, "blocked-packages"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 77
    :cond_2
    :goto_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-eq v5, v11, :cond_0

    .line 78
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 79
    const-string/jumbo v7, "package"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 80
    iget-object v7, p0, Lcom/baidu/backpad/BackpadControllService;->mEnabledPackages:Ljava/util/HashSet;

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

    .line 89
    .end local v3           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v4           #tag:Ljava/lang/String;
    .end local v5           #type:I
    .end local v6           #version:I
    :catch_0
    move-exception v1

    .line 91
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {p0}, Lcom/baidu/backpad/BackpadControllService;->addDefaultEnabledApps()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 99
    :try_start_3
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 102
    .end local v0           #dir:Ljava/io/File;
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v2           #infile:Ljava/io/FileInputStream;
    :cond_3
    :goto_2
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 103
    return-void

    .line 82
    .restart local v0       #dir:Ljava/io/File;
    .restart local v2       #infile:Ljava/io/FileInputStream;
    .restart local v3       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4       #tag:Ljava/lang/String;
    .restart local v5       #type:I
    .restart local v6       #version:I
    :cond_4
    :try_start_4
    const-string v7, "blocked-packages"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x3

    if-ne v5, v7, :cond_2

    goto :goto_0

    .line 92
    .end local v3           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v4           #tag:Ljava/lang/String;
    .end local v5           #type:I
    .end local v6           #version:I
    :catch_1
    move-exception v1

    .line 93
    .local v1, e:Ljava/io/IOException;
    :try_start_5
    const-string v7, "BackpadControllManager"

    const-string v9, "Unable to read backapd database"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 99
    :try_start_6
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2

    .line 102
    .end local v0           #dir:Ljava/io/File;
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #infile:Ljava/io/FileInputStream;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v7

    .line 94
    .restart local v0       #dir:Ljava/io/File;
    .restart local v2       #infile:Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    .line 95
    .local v1, e:Ljava/lang/NumberFormatException;
    :try_start_7
    const-string v7, "BackpadControllManager"

    const-string v9, "Unable to parse backapd database"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 99
    :try_start_8
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 96
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v1

    .line 97
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_9
    const-string v7, "BackpadControllManager"

    const-string v9, "Unable to parse backapd database"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 99
    :try_start_a
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
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2
.end method

.method public static main(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 201
    new-instance v0, Lcom/baidu/backpad/BackpadControllService;

    invoke-direct {v0, p0}, Lcom/baidu/backpad/BackpadControllService;-><init>(Landroid/content/Context;)V

    .line 202
    .local v0, service:Lcom/baidu/backpad/BackpadControllService;
    const-string v1, "BackpadControllManager"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 206
    return-void
.end method

.method private writeBlockDb()V
    .locals 9

    .prologue
    .line 106
    iget-object v6, p0, Lcom/baidu/backpad/BackpadControllService;->mEnabledPackages:Ljava/util/HashSet;

    monitor-enter v6

    .line 107
    const/4 v3, 0x0

    .line 109
    .local v3, outfile:Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v5, p0, Lcom/baidu/backpad/BackpadControllService;->mPolicyFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v5}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 111
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 112
    .local v2, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v5, "utf-8"

    invoke-interface {v2, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 114
    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 116
    const/4 v5, 0x0

    const-string v7, "backpad-controll-policy"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 118
    const/4 v5, 0x0

    const-string/jumbo v7, "version"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 119
    const/4 v5, 0x0

    const-string v7, "blocked-packages"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 122
    iget-object v5, p0, Lcom/baidu/backpad/BackpadControllService;->mEnabledPackages:Ljava/util/HashSet;

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

    .line 123
    .local v4, pkg:Ljava/lang/String;
    const/4 v5, 0x0

    const-string/jumbo v7, "package"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 125
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

    .line 137
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v4           #pkg:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Ljava/io/IOException;
    if-eqz v3, :cond_0

    .line 139
    :try_start_1
    iget-object v5, p0, Lcom/baidu/backpad/BackpadControllService;->mPolicyFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v5, v3}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 142
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    :goto_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    return-void

    .line 130
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #out:Lorg/xmlpull/v1/XmlSerializer;
    :cond_1
    const/4 v5, 0x0

    :try_start_2
    const-string v7, "blocked-packages"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 132
    const/4 v5, 0x0

    const-string v7, "backpad-controll-policy"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 134
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 136
    iget-object v5, p0, Lcom/baidu/backpad/BackpadControllService;->mPolicyFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v5, v3}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 142
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
.method public addDefaultEnabledApps()V
    .locals 4

    .prologue
    .line 209
    iget-object v2, p0, Lcom/baidu/backpad/BackpadControllService;->mEnabledPackages:Ljava/util/HashSet;

    monitor-enter v2

    .line 210
    :try_start_0
    iget-object v1, p0, Lcom/baidu/backpad/BackpadControllService;->mEnabledPackages:Ljava/util/HashSet;

    const-string v3, "com.baidu.musicplayer"

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v1, p0, Lcom/baidu/backpad/BackpadControllService;->mEnabledPackages:Ljava/util/HashSet;

    const-string v3, "com.baidu.videoplayer"

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v1, p0, Lcom/baidu/backpad/BackpadControllService;->mEnabledPackages:Ljava/util/HashSet;

    const-string v3, "com.baidu.gallery3d"

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v1, p0, Lcom/baidu/backpad/BackpadControllService;->mEnabledPackages:Ljava/util/HashSet;

    const-string v3, "com.duoku.coolreader"

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 214
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    iget-object v1, p0, Lcom/baidu/backpad/BackpadControllService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 216
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/baidu/backpad/BackpadControllService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 217
    return-void

    .line 214
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isEnabled(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkg"

    .prologue
    .line 158
    iget-object v2, p0, Lcom/baidu/backpad/BackpadControllService;->mEnabledPackages:Ljava/util/HashSet;

    monitor-enter v2

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/baidu/backpad/BackpadControllService;->mEnabledPackages:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 160
    .local v0, status:Z
    monitor-exit v2

    .line 161
    return v0

    .line 160
    .end local v0           #status:Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setEnabled(Ljava/lang/String;Z)V
    .locals 3
    .parameter "pkg"
    .parameter "enabled"

    .prologue
    .line 169
    iget-object v2, p0, Lcom/baidu/backpad/BackpadControllService;->mEnabledPackages:Ljava/util/HashSet;

    monitor-enter v2

    .line 170
    if-eqz p2, :cond_0

    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/baidu/backpad/BackpadControllService;->mEnabledPackages:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 175
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    iget-object v1, p0, Lcom/baidu/backpad/BackpadControllService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 177
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/baidu/backpad/BackpadControllService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 178
    return-void

    .line 173
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/baidu/backpad/BackpadControllService;->mEnabledPackages:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 175
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
