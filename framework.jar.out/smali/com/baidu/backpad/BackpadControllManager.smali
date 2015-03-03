.class public Lcom/baidu/backpad/BackpadControllManager;
.super Ljava/lang/Object;
.source "BackpadControllManager.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final SERVICE_NAME:Ljava/lang/String; = "BackpadControllManager"

.field public static final TAG:Ljava/lang/String; = "BackpadControllManager"

.field private static sInstance:Lcom/baidu/backpad/BackpadControllManager;

.field private static sInstanceLock:Ljava/lang/Object;


# instance fields
.field private mService:Lcom/baidu/backpad/IBackpadControll;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/backpad/BackpadControllManager;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-direct {p0}, Lcom/baidu/backpad/BackpadControllManager;->getService()V

    .line 22
    return-void
.end method

.method public static getInstance()Lcom/baidu/backpad/BackpadControllManager;
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/baidu/backpad/BackpadControllManager;->getInstance(Landroid/content/Context;)Lcom/baidu/backpad/BackpadControllManager;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/baidu/backpad/BackpadControllManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 25
    sget-object v1, Lcom/baidu/backpad/BackpadControllManager;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lcom/baidu/backpad/BackpadControllManager;->sInstance:Lcom/baidu/backpad/BackpadControllManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/backpad/BackpadControllManager;->sInstance:Lcom/baidu/backpad/BackpadControllManager;

    iget-object v0, v0, Lcom/baidu/backpad/BackpadControllManager;->mService:Lcom/baidu/backpad/IBackpadControll;

    if-nez v0, :cond_1

    .line 27
    :cond_0
    new-instance v0, Lcom/baidu/backpad/BackpadControllManager;

    invoke-direct {v0, p0}, Lcom/baidu/backpad/BackpadControllManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/backpad/BackpadControllManager;->sInstance:Lcom/baidu/backpad/BackpadControllManager;

    .line 29
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    sget-object v0, Lcom/baidu/backpad/BackpadControllManager;->sInstance:Lcom/baidu/backpad/BackpadControllManager;

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getService()V
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x0

    .local v0, counter:I
    move v1, v0

    .line 39
    .end local v0           #counter:I
    .local v1, counter:I
    :goto_0
    add-int/lit8 v0, v1, 0x1

    .end local v1           #counter:I
    .restart local v0       #counter:I
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/baidu/backpad/BackpadControllManager;->mService:Lcom/baidu/backpad/IBackpadControll;

    if-nez v2, :cond_0

    .line 40
    const-string v2, "BackpadControllManager"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/backpad/IBackpadControll$Stub;->asInterface(Landroid/os/IBinder;)Lcom/baidu/backpad/IBackpadControll;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/backpad/BackpadControllManager;->mService:Lcom/baidu/backpad/IBackpadControll;

    move v1, v0

    .end local v0           #counter:I
    .restart local v1       #counter:I
    goto :goto_0

    .line 42
    .end local v1           #counter:I
    .restart local v0       #counter:I
    :cond_0
    return-void
.end method


# virtual methods
.method public isEnabled(Ljava/lang/String;)Z
    .locals 4
    .parameter "pkg"

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Lcom/baidu/backpad/BackpadControllManager;->getService()V

    .line 58
    :try_start_0
    iget-object v2, p0, Lcom/baidu/backpad/BackpadControllManager;->mService:Lcom/baidu/backpad/IBackpadControll;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/baidu/backpad/BackpadControllManager;->mService:Lcom/baidu/backpad/IBackpadControll;

    invoke-interface {v2, p1}, Lcom/baidu/backpad/IBackpadControll;->isEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 62
    :cond_0
    :goto_0
    return v1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BackpadControllManager"

    const-string v3, "Service may dead"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setEnabled(Ljava/lang/String;Z)V
    .locals 3
    .parameter "pkg"
    .parameter "enabled"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/baidu/backpad/BackpadControllManager;->getService()V

    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/baidu/backpad/BackpadControllManager;->mService:Lcom/baidu/backpad/IBackpadControll;

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/baidu/backpad/BackpadControllManager;->mService:Lcom/baidu/backpad/IBackpadControll;

    invoke-interface {v1, p1, p2}, Lcom/baidu/backpad/IBackpadControll;->setEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BackpadControllManager"

    const-string v2, "Service may dead"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
