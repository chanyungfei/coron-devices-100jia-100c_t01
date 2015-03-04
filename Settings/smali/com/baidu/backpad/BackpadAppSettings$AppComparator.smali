.class Lcom/baidu/backpad/BackpadAppSettings$AppComparator;
.super Ljava/lang/Object;
.source "BackpadAppSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/backpad/BackpadAppSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppComparator"
.end annotation


# instance fields
.field private mPm:Landroid/content/pm/PackageManager;

.field private final sCollator:Ljava/text/Collator;

.field final synthetic this$0:Lcom/baidu/backpad/BackpadAppSettings;


# direct methods
.method public constructor <init>(Lcom/baidu/backpad/BackpadAppSettings;Landroid/content/pm/PackageManager;)V
    .locals 1
    .parameter
    .parameter "manager"

    .prologue
    .line 261
    iput-object p1, p0, Lcom/baidu/backpad/BackpadAppSettings$AppComparator;->this$0:Lcom/baidu/backpad/BackpadAppSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 260
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/backpad/BackpadAppSettings$AppComparator;->sCollator:Ljava/text/Collator;

    .line 262
    iput-object p2, p0, Lcom/baidu/backpad/BackpadAppSettings$AppComparator;->mPm:Landroid/content/pm/PackageManager;

    .line 263
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 10
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 268
    move-object v4, p1

    check-cast v4, Landroid/content/pm/PackageInfo;

    .local v4, pi1:Landroid/content/pm/PackageInfo;
    move-object v5, p2

    .line 269
    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 270
    .local v5, pi2:Landroid/content/pm/PackageInfo;
    iget-object v8, p0, Lcom/baidu/backpad/BackpadAppSettings$AppComparator;->this$0:Lcom/baidu/backpad/BackpadAppSettings;

    #getter for: Lcom/baidu/backpad/BackpadAppSettings;->mBackpadManager:Lcom/baidu/backpad/BackpadControllManager;
    invoke-static {v8}, Lcom/baidu/backpad/BackpadAppSettings;->access$700(Lcom/baidu/backpad/BackpadAppSettings;)Lcom/baidu/backpad/BackpadControllManager;

    move-result-object v8

    iget-object v9, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/baidu/backpad/BackpadControllManager;->isEnabled(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    move v2, v6

    .line 271
    .local v2, p1:Z
    :goto_0
    iget-object v8, p0, Lcom/baidu/backpad/BackpadAppSettings$AppComparator;->this$0:Lcom/baidu/backpad/BackpadAppSettings;

    #getter for: Lcom/baidu/backpad/BackpadAppSettings;->mBackpadManager:Lcom/baidu/backpad/BackpadControllManager;
    invoke-static {v8}, Lcom/baidu/backpad/BackpadAppSettings;->access$700(Lcom/baidu/backpad/BackpadAppSettings;)Lcom/baidu/backpad/BackpadControllManager;

    move-result-object v8

    iget-object v9, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/baidu/backpad/BackpadControllManager;->isEnabled(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    move v3, v6

    .line 272
    .local v3, p2:Z
    :goto_1
    iget-object v7, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Lcom/baidu/backpad/BackpadAppSettings$AppComparator;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, appLabel1:Ljava/lang/String;
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Lcom/baidu/backpad/BackpadAppSettings$AppComparator;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, appLabel2:Ljava/lang/String;
    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    :cond_0
    if-nez v2, :cond_5

    if-nez v3, :cond_5

    .line 276
    :cond_1
    iget-object v6, p0, Lcom/baidu/backpad/BackpadAppSettings$AppComparator;->sCollator:Ljava/text/Collator;

    invoke-virtual {v6, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 280
    :cond_2
    :goto_2
    return v6

    .end local v0           #appLabel1:Ljava/lang/String;
    .end local v1           #appLabel2:Ljava/lang/String;
    .end local v2           #p1:Z
    .end local v3           #p2:Z
    :cond_3
    move v2, v7

    .line 270
    goto :goto_0

    .restart local v2       #p1:Z
    :cond_4
    move v3, v7

    .line 271
    goto :goto_1

    .line 277
    .restart local v0       #appLabel1:Ljava/lang/String;
    .restart local v1       #appLabel2:Ljava/lang/String;
    .restart local v3       #p2:Z
    :cond_5
    if-eqz v3, :cond_2

    .line 278
    const/4 v6, -0x1

    goto :goto_2
.end method
