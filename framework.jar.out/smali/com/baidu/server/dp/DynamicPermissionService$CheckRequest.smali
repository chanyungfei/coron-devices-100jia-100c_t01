.class Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;
.super Ljava/lang/Object;
.source "DynamicPermissionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/server/dp/DynamicPermissionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckRequest"
.end annotation


# instance fields
.field inProgress:Z

.field perm:Ljava/lang/String;

.field pid:I

.field pkgName:Ljava/lang/String;

.field t:Lcom/baidu/server/dp/Transaction;

.field final synthetic this$0:Lcom/baidu/server/dp/DynamicPermissionService;

.field time:J

.field uid:I


# direct methods
.method public constructor <init>(Lcom/baidu/server/dp/DynamicPermissionService;IILjava/lang/String;Ljava/lang/String;JLcom/baidu/server/dp/Transaction;)V
    .locals 1
    .parameter
    .parameter "uid"
    .parameter "pid"
    .parameter "pkgName"
    .parameter "perm"
    .parameter "time"
    .parameter "t"

    .prologue
    .line 1571
    iput-object p1, p0, Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;->this$0:Lcom/baidu/server/dp/DynamicPermissionService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1569
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;->inProgress:Z

    .line 1572
    iput p2, p0, Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;->uid:I

    .line 1573
    iput p3, p0, Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;->pid:I

    .line 1574
    iput-object p4, p0, Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;->pkgName:Ljava/lang/String;

    .line 1575
    iput-object p5, p0, Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;->perm:Ljava/lang/String;

    .line 1576
    iput-wide p6, p0, Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;->time:J

    .line 1577
    iput-object p8, p0, Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;->t:Lcom/baidu/server/dp/Transaction;

    .line 1578
    return-void
.end method


# virtual methods
.method public isSameRequest(Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;)Z
    .locals 2
    .parameter "cr"

    .prologue
    .line 1580
    iget v0, p0, Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;->uid:I

    iget v1, p1, Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;->uid:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;->pkgName:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;->perm:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;->perm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
