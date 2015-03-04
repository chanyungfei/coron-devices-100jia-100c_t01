.class Lcom/baidu/themeanimation/util/FileUtil$LoadWallpaperTask;
.super Ljava/lang/Object;
.source "FileUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/util/FileUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadWallpaperTask"
.end annotation


# instance fields
.field mHandler:Landroid/os/Handler;

.field mLocalPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/baidu/themeanimation/util/FileUtil;


# direct methods
.method public constructor <init>(Lcom/baidu/themeanimation/util/FileUtil;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "path"
    .parameter "handler"

    .prologue
    .line 281
    iput-object p1, p0, Lcom/baidu/themeanimation/util/FileUtil$LoadWallpaperTask;->this$0:Lcom/baidu/themeanimation/util/FileUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p2, p0, Lcom/baidu/themeanimation/util/FileUtil$LoadWallpaperTask;->mLocalPath:Ljava/lang/String;

    .line 283
    iput-object p3, p0, Lcom/baidu/themeanimation/util/FileUtil$LoadWallpaperTask;->mHandler:Landroid/os/Handler;

    .line 284
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/baidu/themeanimation/util/FileUtil$LoadWallpaperTask;->todo()V

    .line 288
    return-void
.end method

.method todo()V
    .locals 5

    .prologue
    .line 292
    :try_start_0
    iget-object v1, p0, Lcom/baidu/themeanimation/util/FileUtil$LoadWallpaperTask;->this$0:Lcom/baidu/themeanimation/util/FileUtil;

    #getter for: Lcom/baidu/themeanimation/util/FileUtil;->mLockWallPaperLock:[B
    invoke-static {v1}, Lcom/baidu/themeanimation/util/FileUtil;->access$000(Lcom/baidu/themeanimation/util/FileUtil;)[B

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 293
    :try_start_1
    iget-object v1, p0, Lcom/baidu/themeanimation/util/FileUtil$LoadWallpaperTask;->this$0:Lcom/baidu/themeanimation/util/FileUtil;

    iget-object v3, p0, Lcom/baidu/themeanimation/util/FileUtil$LoadWallpaperTask;->this$0:Lcom/baidu/themeanimation/util/FileUtil;

    #calls: Lcom/baidu/themeanimation/util/FileUtil;->loadNextLockWallPaper()Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/baidu/themeanimation/util/FileUtil;->access$200(Lcom/baidu/themeanimation/util/FileUtil;)Landroid/graphics/Bitmap;

    move-result-object v3

    #setter for: Lcom/baidu/themeanimation/util/FileUtil;->mLockWallpaperBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, v3}, Lcom/baidu/themeanimation/util/FileUtil;->access$102(Lcom/baidu/themeanimation/util/FileUtil;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 294
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 295
    :try_start_2
    iget-object v1, p0, Lcom/baidu/themeanimation/util/FileUtil$LoadWallpaperTask;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/baidu/themeanimation/util/FileUtil$LoadWallpaperTask;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x208

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 302
    :goto_0
    return-void

    .line 294
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    .line 299
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 300
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
