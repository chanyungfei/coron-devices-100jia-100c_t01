.class Lcom/android/settings/BackPadSettings$PackageAdapter$1$1;
.super Ljava/lang/Object;
.source "BackPadSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/BackPadSettings$PackageAdapter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/settings/BackPadSettings$PackageAdapter$1;

.field final synthetic val$item:Lcom/android/settings/BackPadSettings$PackageItem;


# direct methods
.method constructor <init>(Lcom/android/settings/BackPadSettings$PackageAdapter$1;Lcom/android/settings/BackPadSettings$PackageItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/android/settings/BackPadSettings$PackageAdapter$1$1;->this$2:Lcom/android/settings/BackPadSettings$PackageAdapter$1;

    iput-object p2, p0, Lcom/android/settings/BackPadSettings$PackageAdapter$1$1;->val$item:Lcom/android/settings/BackPadSettings$PackageItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 325
    iget-object v1, p0, Lcom/android/settings/BackPadSettings$PackageAdapter$1$1;->this$2:Lcom/android/settings/BackPadSettings$PackageAdapter$1;

    iget-object v1, v1, Lcom/android/settings/BackPadSettings$PackageAdapter$1;->this$1:Lcom/android/settings/BackPadSettings$PackageAdapter;

    iget-object v1, v1, Lcom/android/settings/BackPadSettings$PackageAdapter;->mInstalledPackages:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settings/BackPadSettings$PackageAdapter$1$1;->val$item:Lcom/android/settings/BackPadSettings$PackageItem;

    invoke-static {v1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 327
    .local v0, index:I
    if-gez v0, :cond_0

    .line 329
    neg-int v1, v0

    add-int/lit8 v0, v1, -0x1

    .line 330
    iget-object v1, p0, Lcom/android/settings/BackPadSettings$PackageAdapter$1$1;->this$2:Lcom/android/settings/BackPadSettings$PackageAdapter$1;

    iget-object v1, v1, Lcom/android/settings/BackPadSettings$PackageAdapter$1;->this$1:Lcom/android/settings/BackPadSettings$PackageAdapter;

    iget-object v1, v1, Lcom/android/settings/BackPadSettings$PackageAdapter;->mInstalledPackages:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settings/BackPadSettings$PackageAdapter$1$1;->val$item:Lcom/android/settings/BackPadSettings$PackageItem;

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 332
    :cond_0
    iget-object v1, p0, Lcom/android/settings/BackPadSettings$PackageAdapter$1$1;->this$2:Lcom/android/settings/BackPadSettings$PackageAdapter$1;

    iget-object v1, v1, Lcom/android/settings/BackPadSettings$PackageAdapter$1;->this$1:Lcom/android/settings/BackPadSettings$PackageAdapter;

    invoke-virtual {v1}, Lcom/android/settings/BackPadSettings$PackageAdapter;->notifyDataSetChanged()V

    .line 333
    return-void
.end method
