.class Lcom/android/server/power/PowerManagerService$4;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Lcom/android/server/power/DisplayPowerController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 2530
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProximityNegative()V
    .locals 4

    .prologue
    .line 2550
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$800(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2551
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$1102(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 2552
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v2, 0x200

    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$976(Lcom/android/server/power/PowerManagerService;I)I

    .line 2558
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    #calls: Lcom/android/server/power/PowerManagerService;->wakeUpInternal(J)V
    invoke-static {v0, v2, v3}, Lcom/android/server/power/PowerManagerService;->access$1200(Lcom/android/server/power/PowerManagerService;J)V

    .line 2559
    monitor-exit v1

    .line 2560
    return-void

    .line 2559
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onProximityPositive()V
    .locals 3

    .prologue
    .line 2541
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$800(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2542
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x1

    #setter for: Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$1102(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 2543
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v2, 0x200

    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$976(Lcom/android/server/power/PowerManagerService;I)I

    .line 2544
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    #calls: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1000(Lcom/android/server/power/PowerManagerService;)V

    .line 2545
    monitor-exit v1

    .line 2546
    return-void

    .line 2545
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSbProximityNegative()V
    .locals 4

    .prologue
    .line 2574
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$800(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2576
    :try_start_0
    const-string v0, "PowerManagerService"

    const-string v2, "onSbProximityNegative - sbWakeUp"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2578
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/power/PowerManagerService;->sbWakeUp(J)V

    .line 2579
    monitor-exit v1

    .line 2580
    return-void

    .line 2579
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSbProximityPositive()V
    .locals 5

    .prologue
    .line 2564
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$800(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2566
    :try_start_0
    const-string v0, "PowerManagerService"

    const-string v2, "onSbProximityPositive - sbGoToSleep"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2568
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/power/PowerManagerService;->sbGoToSleep(JI)V

    .line 2569
    monitor-exit v1

    .line 2570
    return-void

    .line 2569
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onStateChanged()V
    .locals 3

    .prologue
    .line 2533
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$800(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2534
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v2, 0x8

    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$976(Lcom/android/server/power/PowerManagerService;I)I

    .line 2535
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    #calls: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1000(Lcom/android/server/power/PowerManagerService;)V

    .line 2536
    monitor-exit v1

    .line 2537
    return-void

    .line 2536
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
